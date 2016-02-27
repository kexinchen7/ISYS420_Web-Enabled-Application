/*
Copyright (c) 2014, Armande Bayanes, http://jqzoomer.strongtechsolutions.com.ph
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the <organization>.
4. Neither the name of the <organization> nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Armande Bayanes ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Armande Bayanes BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/* jQuery plugin named "jqzoomer".
 * 
 *  @author     Armande Bayanes (tuso@programmerspride.com)
 *  @date       November 18, 2014
 *  @liscense   FREE of use.
 *  @example
 *      1.  $('#element_id').jqzoomer()
 *      2.  jQuery('#element_id').jqzoomer()
 *      3.  $('.element_class').jqzoomer()
 *      4.  jQuery('.element_class').jqzoomer()
 * */
jQuery.fn.jqzoomer = function(){
    
    return this.each(function() {
        
        var subject = jQuery(this); /* Get the subject element (AS canvas). */

        var image_obj = jQuery('img', subject);
        var image = image_obj.attr('src');

        jQuery(image_obj).one('load', function() {

            var image_w = this.width;
            var image_h = this.height;
            
            /* Fit subject with the width and height of the default image. */
            subject.css('width', image_w).css('height', image_h).css('overflow', 'hidden');
            
            /* Position the default image. */
            image_obj.css('position', 'relative').css({ top: 0, left: 0 });

            jQuery('a', subject).bind('click onclick', function(event) {
                event.preventDefault(); /* Disable clicking of a. */
            });

            var image_zoom = jQuery('a', subject).attr('href'); // Get the large image.
            var image_zoom_w = 0;
            var image_zoom_h = 0;

            var image_zoom_obj = new Image() ;            
            jQuery(image_zoom_obj).one('load', function() {

                image_zoom_w = this.width;
                image_zoom_h = this.height;

                /* Bind the subject element with these events. */
                subject.bind('mousemove mouseout', function(event) {

                    if(event.type == 'mousemove') {

                        /* @start: Will position the mouse inside the canvas only. */
                        var mouse_x = event.pageX - subject.offset().left;
                        var mouse_y = event.pageY - subject.offset().top;
                        /* @end: Will position the mouse inside the canvas only. */

                        var goto_x = (Math.round((mouse_x / image_w) * 100) / 100) * (image_zoom_w - image_w);
                        var goto_y = (Math.round((mouse_y / image_h) * 100) / 100) * (image_zoom_h - image_h);

                        console.log('mouse_x: '+ mouse_x + ', mouse_y: '+ mouse_y);
                        console.log('image_w: '+ image_w + ', image_h: '+ image_h);

                        image_obj.css('cursor', 'crosshair').attr('src', image_zoom).css({ left: -goto_x, top: -goto_y });

                    } else if(event.type == 'mouseout') {

                        image_obj.css('cursor', 'default').attr('src', image).css({ top: 0, left: 0 });
                    }
                });
            });

            jQuery(image_zoom_obj).attr('src', image_zoom);
        });
    });
};



app.directive('zoom', ['$rootScope', 'resize', '$timeout', function ($rootScope, resize, $timeout) {
    return {
        restrict: "A",
        link: function (scope, element, attrs) {

            var guid = function () {
                function s4() {
                    return Math.floor((1 + Math.random()) * 0x10000)
                      .toString(16)
                      .substring(1);
                }
                return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
                  s4() + '-' + s4() + s4() + s4();
            };

            var id = guid();

            var cardImg = $(element);

            var imgWidth = 0;
            var imgHeight = 0;
            var actualLeft = 0;
            var actualTop = 0;

            var setZoom = function () {

                /////// Image-Zoom ////////

                var lenWidth = 160;
                var lenHeight = 160;
                var lenRadius = 32;
                var lenOpacity = 1;
                var xAdjust = 16; // Element and mouse position are not exactly aligned.

                //  Remove any existing components
                
                
                // Get actual size before creating magnifier (len)
                $("<img/>")
                    .attr("src", cardImg.attr("src"))
                    .load(function () {

                        $('.zoom-mouse-catcher-' + id).remove();
                        $('.zoom-len-' + id).remove();

                        w = cardImg.width();
                        h = cardImg.height();

                        actualWidth = this.width;
                        actualHeight = this.height;
                        actualLeft = parseInt(cardImg.position().left);
                        actualTop = parseInt(cardImg.position().top);

                        // Get original image source to share with magnifier
                        var imgSource = cardImg.attr("src");

                        // Get original click binding to copy on mouse catcher
                        var originalClick = cardImg.attr('ng-click');

                        // Creating a mouse position catcher on topmost

                        var mouseCatcher = $("<div />")
                            .attr('class', 'zoom-mouse-catcher-' + id)
                            .css({
                                'opacity': '0',
                                'width': w,
                                'height': h,
                                'position': 'absolute',
                                'left': actualLeft + 'px',
                                'top': actualTop + 'px'
                            });

                        
                        // Creating the magnifier under the mouse position catcher
                        var len = $("<div />")
                            .attr('class', 'zoom-len-' + id)
                            .css({
                                'display': 'none',
                                'opacity': lenOpacity,
                                'width': lenWidth + 'px',
                                'height': lenHeight + 'px',
                                'position': 'absolute',
                                'left': actualLeft,
                                'top': actualTop,
                                'margin-left': -lenWidth / 2 + 'px',
                                'margin-top': -lenHeight / 2 + 'px',
                                'box-shadow': 'inset 0 2px 4px rgba(0, 0, 0, 0.25)',
                                'border-radius': lenRadius + 'px',
                                'background': 'url(' + imgSource + ') no-repeat',
                                'background-size': actualWidth + 'px ' + actualHeight + 'px',
                            })
                            .insertAfter(cardImg);

                        mouseCatcher.insertAfter(len);

                        mouseCatcher.click(function (e) {
                            scope.$eval(originalClick);
                            scope.$apply();
                        });

                        mouseCatcher.mouseleave(function (e) {
                            len.css('display', 'none');
                        });

                        mouseCatcher.mouseenter(function (e) {
                            len.css('display', '');
                        });

                        mouseCatcher.mousemove(function (e) {

                            var parentOffset = $(this).parent().offset();
                            imgWidth = cardImg.width();
                            imgHeight = cardImg.height();
                            actualLeft = $(element).position().left;
                            actualTop = $(element).position().top;
                            
                            setMouseCatcher();

                            // Mouse cursor relative to image
                            var x = e.pageX - cardImg.offset().left;
                            var y = e.pageY - cardImg.offset().top;

                            // Mouse cursor in term of ratio [0-1].
                            var ratioX = (x / imgWidth);
                            var ratioY = (y / imgHeight);

                            // Background position to subtract to show proper part of the original image
                            var offsetX = (ratioX * actualWidth) - lenWidth / 2;
                            var offsetY = (ratioY * actualHeight) - lenHeight / 2;

                            var position = -offsetX + 'px ' + -offsetY + 'px';
                            len.css('background-position', position);
                            len.css('left', actualLeft + e.offsetX);
                            len.css('top', actualTop + e.offsetY);
                        });
                    });
            }

            var setMouseCatcher = function () {
                var mouseCatcher = $('.zoom-mouse-catcher-' + id);
                mouseCatcher.width(imgWidth);
                mouseCatcher.height(imgHeight);
                mouseCatcher.css('left', actualLeft + 'px');
                mouseCatcher.css('top', actualTop + 'px');
            }

            var watchResize = scope.$on('resize', function (data, $event) {
                imgWidth = cardImg.width();
                imgHeight = cardImg.height();
                actualLeft = parseInt($(element).position().left);
                actualTop = parseInt($(element).position().top);
                setMouseCatcher();
            });

            var watchPosition = $rootScope.$watch(function () { return $(element).position(); }, function (position) {
                if (position) {
                    actualLeft = $(element).position().left;
                    actualTop = $(element).position().top;
                    $timeout(function () { setMouseCatcher(); }, 0);
                }
            }, true);

            var watchSource = $rootScope.$watch(function () { return $(element).attr('src'); }, function (source) {
                if (source) {
                    $timeout(function () { setZoom(); }, 0);
                }
            }, true);

            scope.$on('$destroy', function () {
                watchResize();
                watchPosition();
                watchSource();
            });
        }
    }
}]);

/*
Copyright (c) 2014, Armande Bayanes, http://jqzoomer.strongtechsolutions.com.ph
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the <organization>.
4. Neither the name of the <organization> nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Armande Bayanes ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Armande Bayanes BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/* A jQuery plugin named "jqzoomer".
 * 
 *  @author     Armande Bayanes (tuso@programmerspride.com)
 *  @date       November 18, 2014
 *  @liscense   BSD Liscense. FREE of use.
 *  @example
 *      1.  $('#element_id').jqzoomer()
 *      2.  jQuery('#element_id').jqzoomer()
 *      3.  $('.element_class').jqzoomer()
 *      4.  jQuery('.element_class').jqzoomer()
 * */
jQuery.fn.jqzoomer=function(){return this.each(function(){var t=jQuery(this),e=jQuery("img",t),s=e.attr("src");jQuery(e).one("load",function(){var o=this.width,r=this.height;t.css("width",o).css("height",r).css("overflow","hidden"),e.css("position","relative").css({top:0,left:0}),jQuery("a",t).bind("click onclick",function(t){t.preventDefault()});var i=jQuery("a",t).attr("href"),c=0,u=0,n=new Image;jQuery(n).one("load",function(){c=this.width,u=this.height,t.bind("mousemove mouseout",function(n){if("mousemove"==n.type){var a=n.pageX-t.offset().left,h=n.pageY-t.offset().top,f=Math.round(a/o*100)/100*(c-o),l=Math.round(h/r*100)/100*(u-r);e.css("cursor","crosshair").attr("src",i).css({left:-f,top:-l})}else"mouseout"==n.type&&e.css("cursor","default").attr("src",s).css({top:0,left:0})})}),jQuery(n).attr("src",i)})})};



    
  