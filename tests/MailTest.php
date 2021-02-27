<?php

use mikehaertl\shellcommand\Command;

test('example', function () {
    $command = new Command('./mail');
    $command->execute();

    //expect($command->execute())->toBeTrue();
    var_dump($command->getStdErr());
});
