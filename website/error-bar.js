function ebar (instance) {
// target : target html container
// msg : notification message
// lvl : (optional) 1-info, 2-success, 3-warn, 4-error

  // (A) CREATE NEW NOTIFICATION BAR
  let bar = document.createElement("div");
  bar.classList.add("bar");

  // (B) ADD CLOSE BUTTON
  let close = document.createElement("div");
  close.innerHTML = "X";
  close.classList.add("close");
  close.onclick = () => { bar.remove(); };
  bar.appendChild(close);

  // (C) SET "ERROR LEVEL"
  if (instance.lvl) {
    let icon = document.createElement("i");
    icon.classList.add("ico");
    switch (instance.lvl) {
      // (C1) INFO
      case 1:
        bar.classList.add("info");
        icon.innerHTML = "&#8505;";
        break;

      // (C2) SUCCESS
      case 2:
        bar.classList.add("success");
        icon.innerHTML = "&#9745;";
        break;

      // (C3) WARNING
      case 3:
        bar.classList.add("warn");
        icon.innerHTML = "&#9888;";
        break;

      // (C4) ERROR
      case 4:
        bar.classList.add("error");
        icon.innerHTML = "&#9747;";
        break;
    }
    bar.appendChild(icon);
  }

  // (D) NOTIFICATION MESSAGE
  let msg = document.createElement("span");
  msg.innerHTML = instance.msg;
  bar.appendChild(msg);

  // (E) ADD BAR TO CONTAINER
  instance.target.appendChild(bar);
}
