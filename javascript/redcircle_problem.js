var textMessage = "Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example. Let me just type a long message with a lot of content in it as an example.";



function splitMessage(message, maxCharacters) {
  if (message.length < maxCharacters){
    return [message]
  } else {
    let string = '';
    let array = [];
    let message_num = 1;
    let i = 0
    while (true){
      string += message[i];

      message = message.substr(1, message.length);

      if (message.length === 0){
        string += ` (${message_num}/`
        array.push(string)
        i = 0;
        message_num++;
        break;
      }
      if (string.length === maxCharacters - 7){
        string += ` (${message_num}/`
        array.push(string)
        i = 0;
        message_num++;
        string = '';
      }
    }
    for (let i=0; i < array.length; i++){
      array[i] += `${message_num - 1})`;
    }
    return array;
  }
}

console.log(splitMessage(textMessage, 100))
