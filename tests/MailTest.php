<?php

use mikehaertl\shellcommand\Command;

test('example', function () {
    $command = new Command('./mail');
    expect($command->execute())->toBeTrue();
    $command->getOutput();
});
