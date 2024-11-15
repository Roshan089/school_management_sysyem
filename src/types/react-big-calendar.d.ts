declare module 'react-big-calendar/lib/localizers/moment' {
  import { DateLocalizer } from 'react-big-calendar';
  import moment from 'moment';

  const momentLocalizer: (momentInstance: typeof moment) => DateLocalizer;
  export default momentLocalizer;
}
