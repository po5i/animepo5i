// =============================== //
// Status Effects                  //
// v1.0 - Jan 30, 2005             //
// ------------------------------- //
// Written by Lloyd Hassell        //
// Website: lloydhassell.com       //
// Email: lloydhassell@hotmail.com //
// =============================== //

// INITIALIZATION:

assemblerObj = new Object();
blinkerObj = new Object();
contractorObj = new Object();
dissolverObj = new Object();
expanderObj = new Object();
scramblerObj = new Object();
shufflerObj = new Object();
sliderObj = new Object();
typerObj = new Object();

// CONFIGURATION:

// Assembler:
assemblerObj.speed = 50;
assemblerObj.refresh = 1000;
assemblerObj.loop = true;
assemblerObj.gap = 0;

// Blinker:
blinkerObj.speed = 100;
blinkerObj.refresh = 1000;
blinkerObj.loop = true;
blinkerObj.blinks = 5;

// Contractor:
contractorObj.speed = 50;
contractorObj.refresh = 1000;
contractorObj.loop = true;
contractorObj.chars = '-';
contractorObj.levels = 5;

// Dissolver:
dissolverObj.speed = 100;
dissolverObj.refresh = 1000;
dissolverObj.loop = true;
dissolverObj.chars = '-';

// Expander:
expanderObj.speed = 50;
expanderObj.refresh = 1000;
expanderObj.loop = true;
expanderObj.chars = '-';
expanderObj.levels = 5;

// Scrambler:
scramblerObj.speed = 50;
scramblerObj.refresh = 1000;
scramblerObj.loop = true;
scramblerObj.chars = '#@&$%';

// Shuffler:
shufflerObj.speed = 100;
shufflerObj.refresh = 1000;
shufflerObj.loop = true;
shufflerObj.shuffles = 5;

// Slider:
sliderObj.speed = 50;
sliderObj.refresh = 1000;
sliderObj.loop = true;

// Typer:
typerObj.speed = 50;
typerObj.refresh = 1000;
typerObj.loop = true;

// MAIN:

assemblerObj.isActive = false;
assemblerObj.timeout = null;
blinkerObj.isActive = false;
blinkerObj.timeout = null;
contractorObj.isActive = false;
contractorObj.timeout = null;
dissolverObj.isActive = false;
dissolverObj.timeout = null;
expanderObj.isActive = false;
expanderObj.timeout = null;
scramblerObj.isActive = false;
scramblerObj.timeout = null;
shufflerObj.isActive = false;
shufflerObj.timeout = null;
sliderObj.isActive = false;
sliderObj.timeout = null;
typerObj.isActive = false;
typerObj.timeout = null;

function statusAssembler(MESSAGES,SPEED,REFRESH,LOOP,GAP) {
   cancelStatusEffects();
   assemblerObj.tempMessages = MESSAGES.split(',');
   assemblerObj.tempSpeed = (SPEED != null) ? SPEED : assemblerObj.speed;
   assemblerObj.tempRefresh = (REFRESH != null) ? REFRESH : assemblerObj.refresh;
   assemblerObj.tempLoop = (LOOP != null) ? LOOP : assemblerObj.loop;
   assemblerObj.tempLoop += '';
   if (assemblerObj.tempLoop == 'true') assemblerObj.tempLoop = -1;
   else if (assemblerObj.tempLoop == 'false') assemblerObj.tempLoop = 1;
   else assemblerObj.tempLoop = parseInt(assemblerObj.tempLoop);
   assemblerObj.tempGap = (GAP != null) ? GAP : assemblerObj.gap;
   assemblerObj.messageIndex = 0;
   assemblerObj.positionIndex = 0;
   assemblerObj.gap = assemblerObj.tempMessages[0].length - 1 + assemblerObj.tempGap;
   assemblerObj.isActive = true;
   activateAssembler();
   }

function statusBlinker(MESSAGES,SPEED,REFRESH,LOOP,BLINKS) {
   cancelStatusEffects();
   blinkerObj.tempMessages = MESSAGES.split(',');
   blinkerObj.tempSpeed = (SPEED != null) ? SPEED : blinkerObj.speed;
   blinkerObj.tempRefresh = (REFRESH != null) ? REFRESH : blinkerObj.refresh;
   blinkerObj.tempLoop = (LOOP != null) ? LOOP : blinkerObj.loop;
   blinkerObj.tempLoop += '';
   if (blinkerObj.tempLoop == 'true') blinkerObj.tempLoop = -1;
   else if (blinkerObj.tempLoop == 'false') blinkerObj.tempLoop = 1;
   else blinkerObj.tempLoop = parseInt(blinkerObj.tempLoop);
   blinkerObj.tempBlinks = (BLINKS != null) ? BLINKS : blinkerObj.blinks;
   blinkerObj.messageIndex = 0;
   blinkerObj.blinkIndex = 0;
   blinkerObj.isActive = true;
   activateBlinker();
   }

function statusContractor(MESSAGES,SPEED,REFRESH,LOOP,CHARS,LEVELS) {
   cancelStatusEffects();
   contractorObj.tempMessages = MESSAGES.split(',');
   contractorObj.tempSpeed = (SPEED != null) ? SPEED : contractorObj.speed;
   contractorObj.tempRefresh = (REFRESH != null) ? REFRESH : contractorObj.refresh;
   contractorObj.tempLoop = (LOOP != null) ? LOOP : contractorObj.loop;
   contractorObj.tempLoop += '';
   if (contractorObj.tempLoop == 'true') contractorObj.tempLoop = -1;
   else if (contractorObj.tempLoop == 'false') contractorObj.tempLoop = 1;
   else contractorObj.tempLoop = parseInt(contractorObj.tempLoop);
   contractorObj.tempChars = (CHARS != null) ? CHARS : contractorObj.chars;
   contractorObj.tempLevels = (LEVELS != null) ? LEVELS : contractorObj.levels;
   contractorObj.messageIndex = 0;
   contractorObj.currentLevel = contractorObj.tempLevels;
   contractorObj.isActive = true;
   activateContractor();
   }

function statusDissolver(MESSAGES,SPEED,REFRESH,LOOP,CHARS) {
   cancelStatusEffects();
   dissolverObj.tempMessages = MESSAGES.split(',');
   dissolverObj.tempSpeed = (SPEED != null) ? SPEED : dissolverObj.speed;
   dissolverObj.tempRefresh = (REFRESH != null) ? REFRESH : dissolverObj.refresh;
   dissolverObj.tempLoop = (LOOP != null) ? LOOP : dissolverObj.loop;
   dissolverObj.tempLoop += '';
   if (dissolverObj.tempLoop == 'true') dissolverObj.tempLoop = -1;
   else if (dissolverObj.tempLoop == 'false') dissolverObj.tempLoop = 1;
   else dissolverObj.tempLoop = parseInt(dissolverObj.tempLoop);
   dissolverObj.tempChars = (CHARS != null) ? CHARS : dissolverObj.chars;
   dissolverObj.messageIndex = 0;
   dissolverObj.positionIndex = 0;
   dissolverObj.displayedStr = '';
   for (var strLoop = 0; strLoop < dissolverObj.tempMessages[0].length; strLoop++) dissolverObj.displayedStr += 'F';
   dissolverObj.randomIndex = Math.floor(Math.random() * dissolverObj.displayedStr.length);
   dissolverObj.displayedStr = dissolverObj.displayedStr.substring(0,dissolverObj.randomIndex) + 'T' + dissolverObj.displayedStr.substring(dissolverObj.randomIndex + 1);
   dissolverObj.isActive = true;
   activateDissolver();
   }

function statusExpander(MESSAGES,SPEED,REFRESH,LOOP,CHARS,LEVELS) {
   cancelStatusEffects();
   expanderObj.tempMessages = MESSAGES.split(',');
   expanderObj.tempSpeed = (SPEED != null) ? SPEED : expanderObj.speed;
   expanderObj.tempRefresh = (REFRESH != null) ? REFRESH : expanderObj.refresh;
   expanderObj.tempLoop = (LOOP != null) ? LOOP : expanderObj.loop;
   expanderObj.tempLoop += '';
   if (expanderObj.tempLoop == 'true') expanderObj.tempLoop = -1;
   else if (expanderObj.tempLoop == 'false') expanderObj.tempLoop = 1;
   else expanderObj.tempLoop = parseInt(expanderObj.tempLoop);
   expanderObj.tempChars = (CHARS != null) ? CHARS : expanderObj.chars;
   expanderObj.tempLevels = (LEVELS != null) ? LEVELS : expanderObj.levels;
   expanderObj.messageIndex = 0;
   expanderObj.currentLevel = 0;
   expanderObj.isActive = true;
   activateExpander();
   }

function statusScrambler(MESSAGES,SPEED,REFRESH,LOOP,CHARS) {
   cancelStatusEffects();
   scramblerObj.tempMessages = MESSAGES.split(',');
   scramblerObj.tempSpeed = (SPEED != null) ? SPEED : scramblerObj.speed;
   scramblerObj.tempRefresh = (REFRESH != null) ? REFRESH : scramblerObj.refresh;
   scramblerObj.tempLoop = (LOOP != null) ? LOOP : scramblerObj.loop;
   scramblerObj.tempLoop += '';
   if (scramblerObj.tempLoop == 'true') scramblerObj.tempLoop = -1;
   else if (scramblerObj.tempLoop == 'false') scramblerObj.tempLoop = 1;
   else scramblerObj.tempLoop = parseInt(scramblerObj.tempLoop);
   scramblerObj.tempChars = (CHARS != null) ? CHARS : scramblerObj.chars;
   scramblerObj.messageIndex = 0;
   scramblerObj.scrambleIndex = 0;
   scramblerObj.positionIndex = 0;
   scramblerObj.isActive = true;
   activateScrambler();
   }

function statusShuffler(MESSAGES,SPEED,REFRESH,LOOP,SHUFFLES) {
   cancelStatusEffects();
   shufflerObj.tempMessages = MESSAGES.split(',');
   shufflerObj.tempSpeed = (SPEED != null) ? SPEED : shufflerObj.speed;
   shufflerObj.tempRefresh = (REFRESH != null) ? REFRESH : shufflerObj.refresh;
   shufflerObj.tempLoop = (LOOP != null) ? LOOP : shufflerObj.loop;
   shufflerObj.tempLoop += '';
   if (shufflerObj.tempLoop == 'true') shufflerObj.tempLoop = -1;
   else if (shufflerObj.tempLoop == 'false') shufflerObj.tempLoop = 1;
   else shufflerObj.tempLoop = parseInt(shufflerObj.tempLoop);
   shufflerObj.tempShuffles = (SHUFFLES != null) ? SHUFFLES : shufflerObj.shuffles;
   shufflerObj.messageIndex = 0;
   shufflerObj.shuffleCount = 0;
   shufflerObj.isActive = true;
   activateShuffler();
   }

function statusSlider(MESSAGES,SPEED,REFRESH,LOOP) {
   cancelStatusEffects();
   sliderObj.tempMessages = MESSAGES.split(',');
   sliderObj.tempSpeed = (SPEED != null) ? SPEED : sliderObj.speed;
   sliderObj.tempRefresh = (REFRESH != null) ? REFRESH : sliderObj.refresh;
   sliderObj.tempLoop = (LOOP != null) ? LOOP : sliderObj.loop;
   sliderObj.tempLoop += '';
   if (sliderObj.tempLoop == 'true') sliderObj.tempLoop = -1;
   else if (sliderObj.tempLoop == 'false') sliderObj.tempLoop = 1;
   else sliderObj.tempLoop = parseInt(sliderObj.tempLoop);
   sliderObj.messageIndex = 0;
   sliderObj.positionIndex = 0;
   sliderObj.isActive = true;
   activateSlider();
   }

function statusTyper(MESSAGES,SPEED,REFRESH,LOOP) {
   cancelStatusEffects();
   typerObj.tempMessages = MESSAGES.split(',');
   typerObj.tempSpeed = (SPEED != null) ? SPEED : typerObj.speed;
   typerObj.tempRefresh = (REFRESH != null) ? REFRESH : typerObj.refresh;
   typerObj.tempLoop = (LOOP != null) ? LOOP : typerObj.loop;
   typerObj.tempLoop += '';
   if (typerObj.tempLoop == 'true') typerObj.tempLoop = -1;
   else if (typerObj.tempLoop == 'false') typerObj.tempLoop = 1;
   else typerObj.tempLoop = parseInt(typerObj.tempLoop);
   typerObj.messageIndex = 0;
   typerObj.positionIndex = 0;
   typerObj.isActive = true;
   activateTyper();
   }

function cancelStatusEffects() {
   assemblerObj.isActive = false;
   blinkerObj.isActive = false;
   contractorObj.isActive = false;
   dissolverObj.isActive = false;
   expanderObj.isActive = false;
   scramblerObj.isActive = false;
   shufflerObj.isActive = false;
   sliderObj.isActive = false;
   typerObj.isActive = false;
   window.status = window.defaultStatus;
   }

function activateAssembler() {
   if (assemblerObj.isActive) {
      var currentMessage = assemblerObj.tempMessages[assemblerObj.messageIndex];
      var tempMessage = currentMessage.substring(0,assemblerObj.positionIndex);
      if (currentMessage.charAt(assemblerObj.positionIndex) == ' ') assemblerObj.gap = 1;
      else {
         for (var gapLoop = 0; gapLoop < assemblerObj.gap; gapLoop++) tempMessage += ' ';
         if (assemblerObj.gap != 0) tempMessage += currentMessage.charAt(assemblerObj.positionIndex);
         }
      window.status = tempMessage;
      if (assemblerObj.positionIndex < currentMessage.length) {
         assemblerObj.gap = (assemblerObj.gap == 0) ? currentMessage.length - 1 - assemblerObj.positionIndex + assemblerObj.tempGap : assemblerObj.gap - 1;
         if (assemblerObj.gap == 0) assemblerObj.positionIndex++;
         window.setTimeout('activateAssembler()',assemblerObj.tempSpeed);
         }
      else {
         assemblerObj.positionIndex = 0;
         assemblerObj.messageIndex = (assemblerObj.messageIndex < assemblerObj.tempMessages.length - 1) ? assemblerObj.messageIndex + 1 : 0;
         assemblerObj.gap = assemblerObj.tempMessages[assemblerObj.messageIndex].length - 1 + assemblerObj.tempGap;
         if (assemblerObj.messageIndex == 0) assemblerObj.tempLoop--;
         if (assemblerObj.tempLoop == 0) assemblerObj.isActive = false;
         else window.setTimeout('activateAssembler()',assemblerObj.tempRefresh);
         }
      }
   }

function activateBlinker() {
   if (blinkerObj.isActive) {
      var tempMessage = (blinkerObj.blinkIndex % 2 == 0) ? '' : blinkerObj.tempMessages[blinkerObj.messageIndex];
      window.status = tempMessage;
      if (blinkerObj.blinkIndex < (blinkerObj.tempBlinks * 2) - 1) {
         blinkerObj.blinkIndex++;
         window.setTimeout('activateBlinker()',blinkerObj.tempSpeed);
         }
      else {
         blinkerObj.blinkIndex = 0;
         blinkerObj.messageIndex = (blinkerObj.messageIndex < blinkerObj.tempMessages.length - 1) ? blinkerObj.messageIndex + 1 : 0;
         if (blinkerObj.messageIndex == 0) blinkerObj.tempLoop--;
         if (blinkerObj.tempLoop == 0) blinkerObj.isActive = false;
         else window.setTimeout('activateBlinker()',blinkerObj.tempRefresh);
         }
      }
   }

function activateContractor() {
   if (contractorObj.isActive) {
      var currentMessage = contractorObj.tempMessages[contractorObj.messageIndex];
      var tempMessage = '';
      for (var charLoop = 0; charLoop < currentMessage.length; charLoop++) {
         for (var levelLoop = 0; levelLoop < contractorObj.currentLevel; levelLoop++) tempMessage += contractorObj.tempChars;
         tempMessage += currentMessage.charAt(charLoop);
         }
      for (var levelLoop = 0; levelLoop < contractorObj.currentLevel; levelLoop++) tempMessage += contractorObj.tempChars;
      window.status = tempMessage;
      if (contractorObj.currentLevel > 0) {
         contractorObj.currentLevel--;
         window.setTimeout('activateContractor()',contractorObj.tempSpeed);
         }
      else {
         contractorObj.currentLevel = contractorObj.tempLevels;
         contractorObj.messageIndex = (contractorObj.messageIndex < contractorObj.tempMessages.length - 1) ? contractorObj.messageIndex + 1 : 0;
         if (contractorObj.messageIndex == 0) contractorObj.tempLoop--;
         if (contractorObj.tempLoop == 0) contractorObj.isActive = false;
         else window.setTimeout('activateContractor()',contractorObj.tempRefresh);
         }
      }
   }

function activateDissolver() {
   if (dissolverObj.isActive) {
      var currentMessage = dissolverObj.tempMessages[dissolverObj.messageIndex];
      var tempMessage = '';
      for (var strLoop = 0; strLoop < dissolverObj.displayedStr.length; strLoop++) tempMessage += (dissolverObj.displayedStr.charAt(strLoop) == 'T') ? currentMessage.charAt(strLoop) : dissolverObj.tempChars;
      window.status = tempMessage;
      if (dissolverObj.positionIndex < currentMessage.length - 1) {
         dissolverObj.positionIndex++;
         dissolverObj.randomIndex = Math.floor(Math.random() * dissolverObj.displayedStr.length);
         while (dissolverObj.displayedStr.charAt(dissolverObj.randomIndex) == 'T') dissolverObj.randomIndex = Math.floor(Math.random() * dissolverObj.displayedStr.length);
         dissolverObj.displayedStr = dissolverObj.displayedStr.substring(0,dissolverObj.randomIndex) + 'T' + dissolverObj.displayedStr.substring(dissolverObj.randomIndex + 1);
         window.setTimeout('activateDissolver()',dissolverObj.tempSpeed);
         }
      else {
         dissolverObj.positionIndex = 0;
         dissolverObj.messageIndex = (dissolverObj.messageIndex < dissolverObj.tempMessages.length - 1) ? dissolverObj.messageIndex + 1 : 0;
         dissolverObj.displayedStr = '';
         for (var strLoop = 0; strLoop < dissolverObj.tempMessages[dissolverObj.messageIndex].length; strLoop++) dissolverObj.displayedStr += 'F';
         dissolverObj.randomIndex = Math.floor(Math.random() * dissolverObj.displayedStr.length);
         dissolverObj.displayedStr = dissolverObj.displayedStr.substring(0,dissolverObj.randomIndex) + 'T' + dissolverObj.displayedStr.substring(dissolverObj.randomIndex + 1);
         if (dissolverObj.messageIndex == 0) dissolverObj.tempLoop--;
         if (dissolverObj.tempLoop == 0) dissolverObj.isActive = false;
         else window.setTimeout('activateDissolver()',dissolverObj.tempRefresh);
         }
      }
   }

function activateExpander() {
   if (expanderObj.isActive) {
      var currentMessage = expanderObj.tempMessages[expanderObj.messageIndex];
      var tempMessage = '';
      for (var charLoop = 0; charLoop < currentMessage.length; charLoop++) {
         for (var levelLoop = 0; levelLoop < expanderObj.currentLevel; levelLoop++) tempMessage += expanderObj.tempChars;
         tempMessage += currentMessage.charAt(charLoop);
         }
      for (var levelLoop = 0; levelLoop < expanderObj.currentLevel; levelLoop++) tempMessage += expanderObj.tempChars;
      window.status = tempMessage;
      if (expanderObj.currentLevel < expanderObj.tempLevels) {
         expanderObj.currentLevel++;
         window.setTimeout('activateExpander()',expanderObj.tempSpeed);
         }
      else {
         expanderObj.currentLevel = 0;
         expanderObj.messageIndex = (expanderObj.messageIndex < expanderObj.tempMessages.length - 1) ? expanderObj.messageIndex + 1 : 0;
         if (expanderObj.messageIndex == 0) expanderObj.tempLoop--;
         if (expanderObj.tempLoop == 0) expanderObj.isActive = false;
         else window.setTimeout('activateExpander()',expanderObj.tempRefresh);
         }
      }
   }

function activateScrambler() {
   if (scramblerObj.isActive) {
      var currentMessage = scramblerObj.tempMessages[scramblerObj.messageIndex];
      var tempMessage = currentMessage.substring(0,scramblerObj.positionIndex) + '';
      if (scramblerObj.scrambleIndex < scramblerObj.tempChars.length) tempMessage += scramblerObj.tempChars.charAt(scramblerObj.scrambleIndex);
      window.status = tempMessage;
      if (scramblerObj.positionIndex < currentMessage.length) {
         if (scramblerObj.scrambleIndex < scramblerObj.tempChars.length) scramblerObj.scrambleIndex++;
         else scramblerObj.scrambleIndex = 0;
         if (scramblerObj.scrambleIndex == scramblerObj.tempChars.length) scramblerObj.positionIndex++;
         window.setTimeout('activateScrambler()',scramblerObj.tempSpeed);
         }
      else {
         scramblerObj.scrambleIndex = 0;
         scramblerObj.positionIndex = 0;
         scramblerObj.messageIndex = (scramblerObj.messageIndex < scramblerObj.tempMessages.length - 1) ? scramblerObj.messageIndex + 1 : 0;
         if (scramblerObj.messageIndex == 0) scramblerObj.tempLoop--;
         if (scramblerObj.tempLoop == 0) scramblerObj.isActive = false;
         else window.setTimeout('activateScrambler()',scramblerObj.tempRefresh);
         }
      }
   }

function activateShuffler() {
   if (shufflerObj.isActive) {
      var currentMessage = shufflerObj.tempMessages[shufflerObj.messageIndex];
      var tempMessage = '';
      if (shufflerObj.shuffleCount == shufflerObj.tempShuffles) tempMessage = currentMessage;
      else {
         var randomCheckStr = ',';
         while (tempMessage.length != currentMessage.length) {
            var tempRandomChar = Math.floor(Math.random() * currentMessage.length);
            if (randomCheckStr.indexOf(',' + tempRandomChar + ',') == -1) {
               tempMessage += currentMessage.charAt(tempRandomChar) + '';
               randomCheckStr += tempRandomChar + ',';
               }
            }
         }
      window.status = tempMessage;
      if (shufflerObj.shuffleCount < shufflerObj.tempShuffles) {
         shufflerObj.shuffleCount++;
         window.setTimeout('activateShuffler()',shufflerObj.tempSpeed);
         }
      else {
         shufflerObj.shuffleCount = 0;
         shufflerObj.messageIndex = (shufflerObj.messageIndex < shufflerObj.tempMessages.length - 1) ? shufflerObj.messageIndex + 1 : 0;
         if (shufflerObj.messageIndex == 0) shufflerObj.tempLoop--;
         if (shufflerObj.tempLoop == 0) shufflerObj.isActive = false;
         else window.setTimeout('activateShuffler()',shufflerObj.tempRefresh);
         }
      }
   }

function activateSlider() {
   if (sliderObj.isActive) {
      var currentMessage = sliderObj.tempMessages[sliderObj.messageIndex];
      var tempMessage = currentMessage.substring(currentMessage.length - 1 - sliderObj.positionIndex);
      window.status = tempMessage;
      if (sliderObj.positionIndex < currentMessage.length) {
         sliderObj.positionIndex++;
         window.setTimeout('activateSlider()',sliderObj.tempSpeed);
         }
      else {
         sliderObj.positionIndex = 0;
         sliderObj.messageIndex = (sliderObj.messageIndex < sliderObj.tempMessages.length - 1) ? sliderObj.messageIndex + 1 : 0;
         if (sliderObj.messageIndex == 0) sliderObj.tempLoop--;
         if (sliderObj.tempLoop == 0) sliderObj.isActive = false;
         else window.setTimeout('activateSlider()',sliderObj.tempRefresh);
         }
      }
   }

function activateTyper() {
   if (typerObj.isActive) {
      var currentMessage = typerObj.tempMessages[typerObj.messageIndex];
      var tempMessage = currentMessage.substring(0,typerObj.positionIndex);
      window.status = tempMessage;
      if (typerObj.positionIndex < currentMessage.length) {
         typerObj.positionIndex++;
         window.setTimeout('activateTyper()',typerObj.tempSpeed);
         }
      else {
         typerObj.positionIndex = 0;
         typerObj.messageIndex = (typerObj.messageIndex < typerObj.tempMessages.length - 1) ? typerObj.messageIndex + 1 : 0;
         if (typerObj.messageIndex == 0) typerObj.tempLoop--;
         if (typerObj.tempLoop == 0) typerObj.isActive = false;
         else window.setTimeout('activateTyper()',typerObj.tempRefresh);
         }
      }
   }