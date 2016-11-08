import Component from 'can/component/';
import Map from 'can/map/';
import 'can/map/define/';
import './list.less!';
import template from './list.stache!';

export const ViewModel = Map.extend({
  define: {
    message: {
      value: 'This is the example-list component'
    }
  }
});

export default Component.extend({
  tag: 'example-list',
  viewModel: ViewModel,
  template
});