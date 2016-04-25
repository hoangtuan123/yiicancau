<div class="modal-body">

  <div id="lightbox-container-image-data-box" style="display: block; width: 500px;">
    <div id="lightbox-container-image-data">
      <div id="lightbox-image-details">
        <span id="lightbox-image-details-caption" style="display: inline;">{{Lightbox.imageCaption}}</span>
      </div>
      <div id="lightbox-secNav">
        <a id="lightbox-secNav-btnClose" ng-click="$dismiss()"><img src="themes/images/lightbox/lightbox-btn-close.gif"></a>
      </div>
    </div>
  </div>
  
  <!-- navigation -->
  

  <div class="lightbox-image-container">
    <!-- caption -->
    <div class="lightbox-image-caption">
      <span></span>
    </div>

    <!-- image -->
    <img ng-if="!Lightbox.isVideo(Lightbox.image)" lightbox-src="{{Lightbox.imageUrl}}" style="width: 100%; height: 100%;">

    <!-- video -->
    <div ng-if="Lightbox.isVideo(Lightbox.image)"  class="embed-responsive embed-responsive-16by9">-->
      <!-- video file embedded directly -->
      <video ng-if="!Lightbox.isSharedVideo(Lightbox.image)"
          lightbox-src="{{Lightbox.imageUrl}}"
          controls
          autoplay="true">
      </video>

      <!-- video embedded with an external service using
           `ng-videosharing-embed` -->
      <embed-video ng-if="Lightbox.isSharedVideo(Lightbox.image)"
          lightbox-src="{{Lightbox.imageUrl}}"
          ng-href="{{Lightbox.imageUrl}}"
          iframe-id="lightbox-video"
          class="embed-responsive-item">
        <a ng-href="{{Lightbox.imageUrl}}">Watch video</a>
      </embed-video>
    </div>
  </div>



</div>