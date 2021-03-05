# CombineRestApiSinkExample
**Example of REST API calls with Combine Framework and handling data with sink() method**

In my example I used a great free JSON API called **Bored** :).
You can can get a suggestion with random activity by calling the following endpoint:

`
https://www.boredapi.com/api/activity
`

It will returns you a JSON like:

```
{
  "accessibility": 0,
  "activity": "Compliment someone",
  "key": "9149470",
  "link": "",
  "participants": 2,
  "price": 0,
  "type": "social"
}
```
I used Combine to make a request and handle received data (and possible errors too).
Run the app and look at the console for your daily activity :)

