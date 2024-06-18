const container = $("#notify-container");

window.addEventListener('message', function(event) {
  if (event.data.event === 'showUI' && event.data.message !== null) {
    const notifyBody = $('<div class="notify-body"></div>');
    const notifyIcon = $('<span class="notify-icon"></span>');
    const notifyText = $('<h3 class="notify-text"></h3>');

    notifyText.text(event.data.message);
    
    switch (event.data.type) {
      case 'inform':
        notifyBody.addClass('inform');
        notifyIcon.addClass('fa fa-info-circle'); // Inform icon
        break;
      case 'success':
        notifyBody.addClass('success');
        notifyIcon.addClass('fa fa-check-circle'); // Success icon
        break;
      case 'error':
        notifyBody.addClass('error');
        notifyIcon.addClass('fa fa-xmark'); // Error icon
        break;
      default:
        notifyBody.addClass('inform');
        notifyIcon.addClass('fa fa-info-circle'); // Default icon
    }

    notifyBody.append(notifyIcon).append(notifyText);
    container.append(notifyBody);

    setTimeout(function() {
      notifyBody.addClass('show');
    }, 10); // Small delay to trigger animation

    setTimeout(function() {
      notifyBody.removeClass('show');
      setTimeout(function() {
        notifyBody.remove();
      }, 300); // Match the CSS transition duration
    }, event.data.duration || event.data.message.length * 250);
  }
});
