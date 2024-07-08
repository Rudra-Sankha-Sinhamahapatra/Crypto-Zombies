
# Chapter 13: Events

In this chapter, we'll add an event to our Zombie contract to notify the front-end whenever a new Zombie is created.

## Put it to the Test

Declare an event called `NewZombie`. It should pass `zombieId` (a `uint`), `name` (a `string`), and `dna` (a `uint`).

```solidity
// Declare the event
event NewZombie(uint zombieId, string name, uint dna);

// Modify the _createZombie function
function _createZombie(string memory _name, uint _dna) private {
    // Calculate the new zombie's id
    uint id = zombies.push(Zombie(_name, _dna)) - 1;
    // Fire the NewZombie event
    emit NewZombie(id, _name, _dna);
}
```

This modification to our contract accomplishes the following:
1. **Event Declaration (`NewZombie`)**: Declares an event named `NewZombie` with parameters `zombieId`, `name`, and `dna` to notify the front-end when a new Zombie is created.
   
2. **Function Modification (`_createZombie`)**: Modifies the `_createZombie` function to calculate the new Zombie's id and then fires the `NewZombie` event with the newly created Zombie's details.

Now, every time a new Zombie is created using `_createZombie`, the `NewZombie` event will be emitted, allowing the front-end application to listen for this event and update accordingly.


This outlines how to add an event to a Solidity contract to notify the front-end application whenever a new Zombie is created, enhancing the interactivity and real-time updates of the dApp.