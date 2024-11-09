local args = {
    [1] = "Blow a Kiss",
    [2] = "Emote",
    [3] = {
        [1] = "Salute",
        [2] = "Sleepy",
        [3] = "Facepalm",
        [4] = "Clapping",
        [5] = "Sobbing",
        [6] = "Shhh",
        [7] = "Hairflip",
        [8] = "Skibidi Toilet",
        [9] = "Pushup",
        [10] = "Hairflip 2",
        [11] = "Muscle Flex",
        [12] = "Handstand",
        [13] = "Cheerleading",
        [14] = "Sparring",
        [15] = "Blow a Kiss"
    },
    [4] = {
        [1] = "Broke Boy",
        [2] = "Homeless",
        [3] = "L Rizz",
        [4] = "Unspoken Rizz",
        [5] = "Sigma Rizzler",
        [6] = "Ohio Gyatt",
        [7] = "Smooth Operator",
        [8] = "Angel \240\159\152\135",
        [9] = "Certified Rizzler",
        [10] = "Queen",
        [11] = "Dread Shaker",
        [12] = "The Baddest",
        [13] = "Bands Generator"
    },
    [5] = {
        [1] = "My Fast Food",
        [2] = "Lego",
        [3] = "Early Halloween",
        [4] = "Infinite Luck",
        [5] = "Bandz Generator",
        [6] = "Mr Richest",
        [7] = "The Queen",
        [8] = "Candy Booth",
        [9] = "Galactico",
        [10] = "Hearts",
        [11] = "Cute Flower",
        [12] = "Mr Aura",
        [13] = "Web Booth",
        [14] = "Black Hole"
    }
}

game:GetService("ReplicatedStorage").Events.Buy:FireServer(unpack(args))
