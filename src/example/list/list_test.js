import QUnit from 'steal-qunit';
import { ViewModel } from './list';

// ViewModel unit tests
QUnit.module('cool-pad-mall/example/list');

QUnit.test('Has message', function(){
  var vm = new ViewModel();
  QUnit.equal(vm.attr('message'), 'This is the example-list component');
});
