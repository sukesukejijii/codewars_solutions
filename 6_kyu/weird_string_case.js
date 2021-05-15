// https://www.codewars.com/kata/52b757663a95b11b3d00062d

function toWeirdCase(string) {
      let words = string.split(' ');

      for (const index in words) {
            let letters = words[index].split('');
            for (let i = 0; i < letters.length; i++) {
                  letters[i] = i % 2 == 0 ? letters[i].toUpperCase() : letters[i].toLowerCase();
            }
            words[index] = letters.join('');
      }

      return words.join(' ');
}