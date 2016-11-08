import F from 'funcunit';
import QUnit from 'steal-qunit';

F.attach(QUnit);

QUnit.module('cool-pad-mall functional smoke test', {
  beforeEach() {
    F.open('../development.html');
  }
});

QUnit.test('cool-pad-mall main page shows up', function() {
  F('title').text('cool-pad-mall', 'Title is set');
});
