[Transcript from Cloud Coaching - Automating Invoice Handling using OIC and AI Document Understanding Service -- YouTube](https://www.youtube.com/watch?v=pjdQzFscOrk)

Hello to everyone and welcome to our webinar today.

We are going to show you the Oracle Integration Cloud and how it can help you.
I am Violetta, there is with me Harris, who will be your presenter for this session.
Keep in mind that we save like more than 30 minutes or so for the demo, so today you
will see a small presentation and we will show you how you can use OCI AI Document Understanding
Services and how to use Oracle Integration Cloud to help you actually to automate processes
and I will let Harris to let you know more about the session.

As I said, the demo will be the most important part of this call.

If you have an Oracle Cloud account active, feel free to log in to your tendency and why
not take this, keep in mind that everything you see in this session has an educational
scope so in case any one of you would like to use our services further, please connect
with somebody from the Oracle account team.

Hi, Violetta, thanks a lot, you Tom, everyone, thanks for organizing this session.

Let me share my screen, okay, so again, thanks for joining today.
What we are planning to do is to show you a very important use case that we are seeing
a lot in demand with customers about using one of our AI services, Document Understanding
Service and how we can use Oracle Integration Cloud to automate an end-to-end process.

What this process is, this is about invoice handling.
Any enterprise that you see out there, this is a very, very common requirement where people
are receiving invoices from suppliers and there is a purchase-to-procure process.
You need to match them with your purchase orders and then payment needs to be released.

What we see usually, there are three ways, I'm not saying that this is the only way,
but either suppliers are sending emails, which there's a team receiving those emails and
then doing this matching manually or there's a SFTP server or a file location has been
set up between the suppliers and the organization where they're uploading the invoices and then
someone is actually looking at those invoices doing the matching or there is a supplier
portal where the suppliers have got users, that supplier portal to upload the invoices.

In today's demo, what we are choosing, you will notice us that we will actually upload
some invoices and files while these three ingestion methods or any other ingestion method
you can actually utilize with Oracle Integration Cloud.

The second part is, first is ingest, the second is automate.

What is going to happen in automate, Oracle Integration Cloud is going to pick up these
invoices and it will classify and extract using our AI document understanding service.

Now, before I move ahead for the AI document understanding service, I just have a poll
question for all of you, can we have that poll question, please?
If not, that's okay, we'll continue, okay, yes.
So what I'm just trying to get an idea from all of you is there are a number of AI services
from Oracle.
These are language, speech, vision, document understanding, that is what we are going to
talk about, anomaly detection and digital assistant.
Are you familiar with any of these?
You can choose one or multiple.
Okay.
Thanks a lot.

So what I am seeing over here, which is nice, is that there is around 31% of you are familiar
with document understanding and this is what we will be focusing on.
But you can see there are other services as well, and we can organize sessions for those.

I don't know if you can see the results.
That's what everyone- Yes, yes, I shared them, Haris.
You have already shared, thank you.
Moving on, there is just one more poll question, if we can ask that as well.
I think it was added in the first one, Haris.
Oh, okay, sorry, I should have gone out.
Okay, thanks a lot.

So from the application integration services, I can see that most of you are familiar with
Oracle Integration Cloud, process automation, not that many, and you know, that's okay.
So what we are going to focus as we have an audience, which is familiar somewhat with
integration cloud, somewhat with document understanding, we are not going to go into
deep dive from the perspective of presentation, okay, what OICS or what these services are,
but we will focus more on demo.

Coming back to our use case, as I started, a process of ingest, get the invoices, automate
Oracle Integration Cloud is going to pick up these invoices, call document understanding
service for classifying an extract, what we will observe sometimes, many of the invoices
will be get pegged, will get classified, they would be key value, we get all the information.

But there are scenarios that this service might not pick one or two key data points.
So what we can do and we will do is to kickstart a process automation process, which will initiate
a person within the organization to actually look at the data and provide some input, get
the approval going, and then pass through to the next stage.

The final stage is store, normally the invoices get stored in an ERP system, or it can be
a bespoke system and an autonomous database, for example.

So in today's demo, we will have a file server, we will get the files, we have a few integrations
in Oracle Integration Cloud, document understanding will do the classifier and extract, and finally
we are going to store it in autonomous database.

Okay, so already mentioned from an Oracle's perspective, we have a number of services
when it comes to in our AI platform, we have recently done an agreement with Coher for
LLM as well, we have data science and machine learning, some part of the database itself.
So data science and machine learning services, these are more targeted for data scientists.
But we are offering what in my terms, I call them citizen AI services like digital assistant,
speech, and in today, of course, we are talking about document understanding service.
This is how you as a developer can utilize these services and enhance your applications.
You would notice that there is no level of programming required, there is a service available,
which using their REST APIs, you can call and perform number of tasks.

So if we look at our document understanding service, in all these services, there are
certain pre-trained models.
So in this one, we have quite a few pre-trained models, it can allow you to classify a document.
So you might have a use case where you are receiving a number of documents and you need
to pass it to different departments.
So document classification can help you identify whether this is a bank statement, whether this
is an invoice, whether this is a CV, and so on.

It is a full-blown OCR service as well, so you can perform text extractions.

If there is any tables in the document, it can extract tables.

And then we are providing some pre-trained models around key value extractions, like
resets, invoices, passports, and driver licenses.
We also offer custom models where you can actually create a custom model for classifying
a document or key value extract.
So not only you can utilize the pre-trained models, in this use case, I am just directly
using the pre-trained.
But if there is a document and you would like to create a custom model, again, with the
help of data labeling service, drag and drop, you can easily do that.

Okay, let's take the example of the key value extraction, which is for invoice.
These are some of the fields, around more than 28 fields, which are identified when
we pass an invoice through the document understanding service.

Fields and data like customer ID, invoice ID, amount, tax, shipping addresses, customer
address, customer recipient, and so on.
We are not saying that every invoice has this information, but our service is intelligent
to understand these key value pairs.

And not only that, as you would imagine, as part of an invoice, there would be a number
of line items.
Line items, like for example, if I have created an invoice for computer accessories, I might
be purchasing a mouse, a keyboard, and maybe a mic.
So these are the line items.
So it is able to identify those line items in an array as well.
Okay.

Now, before moving forward, let's have a quick look at this document understanding service.
Now, what you are seeing me here is our Oracle Cloud Infrastructure tenancy.

If you want to utilize this service, you need to just go to analytics and AI.
And here, you are seeing all different AI services, right?

As already mentioned, language is mainly for sentiment analysis, text analysis, speeches.
You can convert audio to text, vision for object detection, and document understanding
is for a number of things like we just discussed.

Now, once you come into the document understanding, on the home page, you see it is providing
some basic information, resources from a developer.
If you are, you would need the REST API references, there are a number of self-paced workshops
available as part of Oracle LiveLabs, so you can go over there or directly to the documentation.

Now, these are the different pre-trained models, like text, table, key value, and document
extraction classifications.
So let's look at some of those examples.

In this case, it provides some sample documents.
So here, you are seeing, it is analyzing this document, and this is the text extraction,
which is the normal OCR.
For every line, it has extracted the text.
So here, you can see algorithm, and you can see where it has got this information.
It is providing me data in two forms.
One is line by line.
As you can see, as I move forward, every line of the data I have, and the other is word
base.
So every word has been extracted as well.
So it provides the output in two forms.
It also allows me to download this PDF in a searchable PDF format.

Now if I upload a local file, so let's say I upload one of these invoices, it will again
analyze, and you would see that it will extract the data in the similar manner.
So this is just OCR, it is extracting the information.
Again, line by line, and word by word.

Now let's take an example of table extraction.
Now here is a document, you can see, and there is this one table in this document.
So this particular service is only focusing on extracting the data from the tables.
Here, you can see I have got the name of partner, agreed upon cash, and the percentage shared,
and you can see that it has extracted all this information for me.

Again, let's try with one of the local files, so let me take a different invoice this time,
and when I upload, it will again take some time, do the analysis, and in here, you can
see I have got this table, quantity, description, unit price, and amount.
So it has extracted all this information.

Okay, next, key value extraction, which is what we will be using in our demo from an
automation perspective.
So let's spend a little bit more time in this one.
Here, it is, again, the demo file extracting the invoice, but let me upload a local file.
As you would be observing, that the invoices that I am uploading, these have been just
you know, I have acquired, and these are all of different formats, right?
It's not that you are dependent on a certain format.
The pre-trained model has been trained on a number of different styles of invoices,
and you can see it is able to extract the information.

Now, what is the information I am seeing on the right-hand side?
Here, you can see that Happy Valley farm that says, okay, that's part of the logo.
The invoice date is this, invoice ID is 1, 2, 3, 4, shipping address is coming from the
address which is shipped to, okay?

If I go down, you see there are these items, you know, there are three items over here,
and if I do show more, these are the line items, right?
Number one, then number two, line number two, line number three, you know, chicken,
cruise, heat lamps, and baby checks, these are the three items, so it is not only able
to extract key values for my invoice, but also at the same time, it has extracted all
these different line items as well.

Now, from a developer perspective, how is this information is going to come to me?
So here, what you can see, while we encourage you to go to the API documentation to go through,
but from a UI perspective, you can see that, you know, the request parameter, the request
payload, it shows over here, you know, I'm using up, in this case, it's just the general
processor, I'm not using a custom project, for example, feature type key value extraction
and I'm passing the data in line.

From the response, let's copy this response and put it here, okay, because that window
is too small, so let me just pre-print it.

Now, this is the response that has come in, okay, so what you can see, you know, it is
telling me, okay, this document is only a single page, page number, what's the width?
From a classification perspective, it has a 99% classified, it has an invoice, okay.
Now, when you look at this service, right, while it is providing the key values, but
in the JSON response, it is showing me the words, okay, again, happiest, valley, that
was the second, it is showing me lines, so that was the first line and then the second
line was the invoice date and then what I am interested in is the key values, that is
the document fields.

So here you can see field type is key value, window name logo, this is the text and this
is, you know, the value.
Now, one thing that you notice as part of the JSON response, it is providing me the
bounding polygon, the normalized vertices and what that is, when I click on this information,
it is bringing this data from this polygon, so it is sharing that information as well
and we are seeing this used in a lot of use cases where, for example, you have a supplier
portal, you are allowing your users or suppliers to upload the document, it goes to the document
classifications understanding, brings the data and then you are showing right there
to your user that this information has come in and this is from where it has captured
because you might want to give them a chance to change information if required.

Now if you look at the second, for example, you see that is an invoice date, it has identified
the value type as date and here you see there are two things, one is the text, which is
directly coming as, you know, November 30, 2022 as written on the invoice and the value
in milliseconds, so I have got two options to utilize this information and so on.

So from our document understanding perspective, this is what the UI looks like and that is
how the JSON response looks like.

Next one is classification, which already it is calling over here that you can see that
this particular document is an invoice, so if you just want to get that information so
you can call the document classification API and here you can see we have uploaded a bank
statement and these are the different labels and that's the confidence for this particular
document.

So document understanding, these are the four pre-trained models and then you can create
a custom model as well for classification and key value extract.

Okay, let's move forward.
Now once we understand the AI service document understanding and I saw how I can use that
from our cloud console, we want to automate it, right?
As we started, the use case is that I'm getting these invoices, I need to get the key value
information and then need to store it in the target system.
Second integration cloud is Oracle's integration platform as a service.
If you go and look at Gartner, this is one of the highest when it comes to the leaders
quadrant.
We are in the leaders quadrant for the six years running.
It has a number of capabilities.

For this use case, I am using capability for integration where you would notice me, I will
be calling the AI service, I will be getting the data from the files, I will be loading
it into eventually into the ATP service.

For the use case where if I'm not able to extract all the fields, I will be kickstarting
a human workflow that is part of the process automation, which is also a capability part
of Oracle integration cloud.
Oracle integration cloud, while it has other capabilities, there is one that it comes with
a free tier of a SFTP file server.
So in my demo, I'm using that file server for getting the files, loading the files and
then OIC picks it up.

It has a number of adapters that I would be utilized and you'll see which adapters I'm
using in the next screen, next slide.
From Oracle cloud services, there are a number of services that I have utilized, object storage
because document understanding places the response in the object storage.
So I will get that from the object storage.
I'm calling the AI document service or AI services and my target in this case is autonomous
database.
So these are the three other cloud services are part of this demo.
Oracle integration cloud comes with a lot of out of the box adapters.
Being part of the Oracle family, you would notice that we have a rich set of adapters
when it comes to Oracle applications like NetSuite, eBusinessSuite, ERP cloud, CX, HCM
and so on.
But being a heterogeneous integration, being heterogeneous, we also offer adapters for
a lot of popular applications like Workday, Salesforce, SAP, ServiceNow and so on.
This is just a snapshot.
This is not a complete list of adapters.
Please go to the documentation to see the list of adapters that we offer.

While we offer all these adapters, there might be cases where you want to integrate with
an application and there is no out of the box adapter.
So in that case, we are providing technology adapters like if that application has got
a REST or file or SOAP service, we can connect with that database adapters.
If you can give us access to the underlying database, we can connect to that.
If you have a messaging layer there like Kafka or Streaming or GMS, of course, we can connect
to that.

In my demo, I'm using three adapters, one for ATB cloud, REST adapter to call my AI
service and FTP adapter to get the file.
So in the automation next demo, what you will observe, I have a few integrations.
I will be loading the files into the SFTP server.
So I put all these six samples over there.
The document understanding, it will call the API.
So we just saw what the document understanding looks like.

But of course, from an automation perspective, I'm calling the APIs to get the key values.
In case there is a requirement for a user intervention, I have a process which will
be kick-started and this particular process will then go through an approval, one step
approval process in my case, and finally the data would be stored in an ATB database.
Let's do a show and tell here.

So first up, you see that I have a few invoices there and as I was showing you in the demo,
all these invoices mostly are different formats.
Now this is what Oracle Integration Cloud looks like.
If I go on to the integrations, I've got three integrations.
Let me run this integration and then we go about these integrations one by one.

What the first integration is doing is it's basically picking up the files as you noticed
in my SFTP server and it takes these files one by one.
So it's basically going to do a list file.
So here it opens.
So what it is doing, it's running a schedule, I just submitted it now.

It goes to the FTP, lists the files and then one by one it is calling one of my child integrations.
One of the things from a best practice perspective for the users who are using Oracle Integration
Cloud, we do not recommend to do a lot of business complex stuff within the schedule
integration.
We always recommend that you call a child integration and you can create a fire and asynchronous
integration if you would like.
What I'm doing when I'm doing this for loop, every loop I'm running it in parallel.
So it will go through the list file, it will find all those six files and it will call
this invoice service one by one.

Now the second integration is mainly receives the file, calls the document understanding
service.
So if I look at this REST adapter, you would notice that I am calling the processor job
URI.
This is what my request looks like and this I have received from the REST API.
So what I showed you as part of the request, what is the processor type, what is the feature
type, which compartment, what is the output location.
And then there is the response that comes based on different key values.
So we just provide a sample.
And once we have done that, this is what Oracle Integration Cloud mapper looks like.
So what this is, I am getting the data, I'm getting the file from the trigger and here
I'm going to do a simple drag and drop and I will provide.
So there are certain fields which are, for example, hard-coded there.
I can get it from lookup as well.

The features that I am using, in this case, it is the key value extraction.
Since I am not using a custom project, in case I need to use a custom project, I will
be providing the model ID, right?
When I'm not using, providing a model ID, it's just going to call the pre-trained key
value invoice, in this case.
Which compartment ID, the input location, the source type, I'm doing an inline.
So I'm just passing the document as base 64.
So that's what I'm doing over here.
So that's how, you know, with the help of simple drag and drop, I can perform the mapping.
So what this is going to do is going to call the AI service for document understanding
service.
The output goes into the object storage or I receive the output.
And then I'm performing a check.

What I'm checking here is that in this use case, I have basically looking at five key
values.
So the values that I'm looking at is the invoice ID, invoice date, invoice total, vendor name,
vendor address, right?
These are the five key parameters that I'm looking in that document.
If all those five parameters are available, without any human intervention, I just go
ahead and I insert the data into the database.
So this is the ATP adapter.
And here I'm just performing a table operation.
So what you would have observed that this is performing operation on the table.
And what operation I want is the insert.

And what is the table?
The table name is invoice document that I'm going to send the data.
And again, I'm doing the mapping from the results into the table itself.
So here, again, I'm passing invoice ID, I'm passing invoice date, I'm passing invoice
total, vendor name, and so on.
This is again, mapping coming from my results.
In case I do not have all the fields that I'm interested in, I'm going to kickstart
a human process.

So let's see how our integration has done.
And then we will look into the process itself.
OK, so we have seen a few minutes back, you observed that I kickstarted the schedule invoices.
And this should have kickstarted six of these key values because I had six invoices.
OK, let's go to monitoring, tracking.

And here in the last one hour, I can see five minutes back, I had started this integration.
The instance ID of that was 1, 2, few zeros to seven.
And it kickstarted called the child integration six times.
So you can see these sample invoices for this 1, 2, 4, 5, zeros to seven.
Simple invoice 1, 2, 5, 4, 3, 6.
This whole process was completed within 40 seconds.

So it was able to call the key value extraction this many times, get the data, insert the
data into our database, as well as call the process in case that was required.
So if I look at one of these invoices from a developer perspective, I'm interested to
see how the process flew.

You can see, OK, it went through, it called the AI service, got the results, and it inserted
the data into the database table.
Now, interestingly, when I was preparing for this demo, any invoice that I was trying to
pass, it was passing through.
So what I did, I just played.
So here is sample invoice three.
You can see this is an example.
Right?
And it has got the invoice number this.
And what I did, I created a sample invoice six, and by force, I just removed the invoice
number.
Right?
So I know that when I pass this, it's not able to get any invoice number.
So in case of simple invoice six, when this integration was called, it went through, called
the document understanding service, got the results, and because invoice ID was not identified,
it went ahead and kickstarted the review process.
OK?

Now, what does this review process looks like?
Let's go into the integration.
And as I said, Oracle Integration Cloud has all these different capabilities.
So I'm still within the integration platform.
All I'm doing is I'm going to the process application, which is a full-blown human workflow.
So this is my process, invoice understanding 2.0.
And from the outset, for this demo, we have kept it a very simple process.
But using Oracle Integration process, you can create static processes.
You can create dynamic processes.
You can add decision rules, and you can bring in data from other applications as well.
So once this quickly opens, this is my static process.
And the process I have created is, OK, I receive the invoice request.
It goes to the reviewer.

You can see it goes to the reviewer.
And then once he reviews it, he submits it, it goes for the approver.
If the approver approves, I call another integration, which will get the data and insert the data
into the database.
In case the approver does not approve, it goes back to the reviewer for their review.
Now if I go and check my email, since sample invoice 6 was kickstarted a process, I can
see I received an email.
So I've just put myself, I've given myself the role of reviewer.
And what we will see is a form where this is the sample invoice, which I showed you recently.
And here I can see that there is no invoice number.
And here the data that it was able to identify, the invoice date, invoice total, vendor name,
I can see that.

OK, the invoice number ID is not there.
So let's add a invoice ID, added invoice ID, let's post a comment for the approver to
see what I have done, and let's submit it.
Now since it goes to the next step, which is for approval, and again, I have added myself
to the role of the approval.
In normal case, of course, you can assign different people and different roles, different
groups for different roles.

So OK, it comes to me, and I can see that, OK, this invoice ID has been entered.
I can verify, OK, that was not there, but looking at my system, that's the correct one.
I can see the comment, OK, and let me approve this particular invoice.
Now since I have approved it, what's going to happen?

I am going to, a third integration is called, and the purpose of this integration is, if
I go to monitoring, again, tracking, and here is another integration, which gets the data
which was provided, when I click on approve, and it inserts the data into the database
table.

Let's look at activity stream, and here you can see the message that came in.
This is the document, because I am storing the document as well, so that's base 64.
Not, you know, this is the invoice ID, the rest of the fields, and this is what has been
received, OK.

So now if I go to my database table, I can see that there are going to be six records,
OK, and out of these six records, I can see that one of the records was reviewed.
This was the review process ID.

If you remember, again, the invoice ID that I had entered for that 765090, for the remaining
of them, they were not reviewed, they were just simply passed through in my current example,
OK.

Now this is what overall end-to-end use case looks like, again, this example we have looked
at the invoices, right, but combining the document understanding service, we are working
with customers like the, for example, I'm based in Dubai, and here one of the requirements
from the HR perspective is visa processing, and when a person joins, they provide possible
details, visa details, and some other documents, and that's a very, very tedious task, because
there's a team which receives these documents, which then enters it into the system.
So we are seeing customers now using the document understanding service, combining it with Oracle
Integration Cloud, so when a person finally provides this information, it gets the data,
it receives the information, and then Oracle Integration Cloud with the help of adapters
can insert the records.

One thing which I'll also like to show here is, sorry, here, yeah, so if I go back to
my example invoice, and I look at the invoice analysis, OK, and let's look at what are the
connection looks like, right, so in this integration, you can see I've got four different connections,
the symbol rest is mainly for the trigger, which is, you know, I'm triggering that, but
let's look at how the connection for the AI document understanding looks like, OK, OK,
now I'm using a REST adapter, within our REST adapter, there are a number of different
options, I can use Swagger, Ramel, OpenAPI, but I'm just going to use the REST API URL,
I'm providing the connection URL for the document understanding, so if you look at the APIs,
OK, so Oracle Cloud Infrastructure APIs for document understanding, I should flip it here
in a second, yeah, so here are the different APIs, so depending on your cloud infrastructure,
which region it is, mine is Frankfurt, so you can just go and pick up the correct one,
so for me, I picked up the Frankfurt one, so that's the Frankfurt API looks like, now

I'm calling a processor job, so this is the API that I am calling, so create processor
job, so you can see this is the version number, so I have actually used that over here, OK,
from a security perspective, I'm using OCI signature version one, so there are blogs
available for you to, you know, you can look at the documentation, how to set it up, so
that's the different user information, so using my user, it needs to have the policies
to be able to call this, so this is how I am configuring the REST connector for connecting
to the AI service, similarly I would be connecting to the object storage as well, let's look
at the database connection as well because that's slightly different, so that was the
REST adapter, now when I am connecting to the ATP database, I am mainly uploading the
wallet that you receive from the ATP console, providing the wallet password, the user credentials
and the service name, these are the key information that I need to provide to be able to connect
to the ATP database, yeah, so from my perspective, this is what I wanted to cover, if there
are any questions, happy to take that and we can have a conversation.

In fact, we have a lot of questions Hadi, so maybe we can start with the Q&A first,
so let's see, the first question you already answered to Rob, so this is fine.

There is another one coming from Yashir, what kind of a curse your success rate can be expected
in terms of extracting invoice data using the AI document understanding service?

Thanks Yasser, a very good question, so what you would find is when we are getting the
response, one of the things that you see in the response, there is a confidence level,
right, in this demo, if you have noticed, I have actually used invoices from all different
formats, right, what we would recommend in your case, you know, test your invoices through
the system, you can actually utilize this confidence percentage that we provide for every
key value or overall document, so you can do some kind of decision point based on that
confidence level and if you have some kind of an invoice which the out-of-the-box pre-train
model is not able to handle or there are certain fields that it's not picking up for any reason,
you can create a custom model, right, and with the help of the custom model, you can
identify, again that's a drag and drop, and you can say, okay, from my invoice, these
are the fields that I am interested in, I just want this, sometime we see, for example,
that while the key value is saying customer ID, you might want to call it something else,
so while that's a very minor thing, but you can create a custom model for those use cases
as well.

And another one from Yassir as well, and also how does the solution handle exceptions or
errors in invoice extraction, and what is the mechanism, are in place to address them.

So what you noticed, we tried to show you one method, how this can be achieved, and in
this case, what we are doing is, we are, we were looking at the fields that we were trying
to extract, we could have used the confidence level as well, and in that case, for the case
of exception only, we were kickstarting a approval workflow, right, so I received six
invoices in this demo, five did not require any kind of human intervention, for the sixth
one, you notice that we actually went through a human workflow, where a person had to actually
look at it manually, approve it, and then, you know, that information was captured.
In some cases, I am seeing, while N2N automation is great, sometimes customers are attaching
it to their supplier portal, yeah, so there are different ways you can handle the exception,
I hope the demo, by the end of the demo, that clarifies as well.

Alright, let's get one more, there is somebody asking, can we have access to this integration
repositories?

Carlos, the exact demo that I have provided, we can look at it, please reach out to us,
and we can see how we can share this information, we can, we will, we will, you know, definitely
like to share, so that's not a problem, right now, we have not uploaded anywhere, which
you can download, but please reach out to me, outside this, and we will, you know, help
you set it up.

And one more, why do we need object storage to get the responses from AI API, doesn't
the API give us the responses we saw under DOC and AI service console in OCI?

Yeah, so currently, and this is, this might change later, but currently what happens is
that if you notice, if I come to document understanding, and I select local files, it actually asks
for an output location, which I had already set up, so you know, it's basically asking
for a compartment.

So here you can see I'm providing a compartment, a bucket, and a prefix, okay.
So the document understanding service, what it does, although it is still synchronous,
because you do not get result from the document understanding service unless it has stored
successfully the response in the object storage, that's the reason that we actually need to
get, you know, you would have seen in my integration, there are two steps, one calling the document
understanding, and the second step is to getting the response from object storage, right.

I understand the concern, you might say, okay, this is asynchronous, which is in a very technical
pure term, yes, but if you see the document understanding response, it will not give you
the response unless it has successfully written into the object storage.
So this is one of the mechanisms, and I think one of the reasons they're doing it is that
it can handle a lot of documents, you know, big size documents.
For example, a 2000 page document as well.
In that case, having a synchronous response might not be the best outcome.

All right, I think there is time to take maybe two more.
What do you think, Harris?
Yeah, we can take questions, let's do it for another five minutes, and I think then you
can wrap.

Okay, because we have to wrap up the call with the useful resources part as well.
So let's say, yeah, let's use five more minutes more.

Okay, there is another interesting question coming from Muna Mucar, I hope I spelled the
right name, is there any capability in Oracle Cloud to allow users to upload invoices instead
of OAC SFTP? Then we can call the same from OAC and then call the AI service API to get the details.

Yes, if you're asking the question from Oracle Analytics Cloud, I understand from an Oracle
Analytics Cloud, there is, it allows you to call REST APIs, so you would go through the
path of the REST API, and I've seen some of my colleagues doing some, they've written
some blogs about that particular use case, so please search for Oracle Analytics Cloud
and AI.
You would find some examples already available.

Somebody else is asking if they can extend the pre-tained model for additional fields
or use cases, or then maybe they can copy the pre-tained model and extend, is it possible?

So currently, and this is a very good question, this is actually an enhancement request that
I have also personally raised to the product team, and they are working on it, so currently
what you can do, you can actually create a custom model, and if there are any special
fields that you would like to extract, which might be the invoices not extracted, so you
can use the custom model for that.

In that case, I understand it's currently two step process that you basically call the
key value extraction API, get all the information that you want, and for the residue, you call
your custom project, so that's how it is today, but hopefully very soon, you would be able
to do what you are asking, but that's a feature which is not available today.
And what about the export import from the train models between compartments and customers
for product use cases, it's possible, I think you kind of mentioned it, right?
In the projects, you can actually move them around from one project to another, and you
can look at the API, there should be an API for that, please, please double check that.

Somebody else is saying that they could see invoice data in storage, in case if data to
be stored in OCM, what is the methodology, not sure if I got it right. So the question is, you would like to send the data to Oracle Content Management, right?

What you see over here in Oracle Integration Cloud, what I am doing, I'm actually storing
the data in the database as well, so if you go over here, you look at any of the invoices,
I'm actually storing the blob data over here, right, so if I just come down somewhere, there
is a download button, it will start downloading, let's save, and yeah, that's the invoice here,
so in a very similar manner from Oracle Integration Cloud, you can actually call Oracle Content
Management APIs, and you can store these invoices in that, you know, whether you use assets
or you use the document, order docs, you can actually store them.

All right, about the language invoice file document that it supports, can you see?
Currently, yeah, currently it supports English, but what I am noticing, and this is one of
the things that we love about our services because there is always changes coming, so
what I noticed that when you do a text extraction, right, for text extraction, I can see that
they have started, maybe it's beta, that Portuguese and Spanish is there coming up, but for key
value extraction, currently, officially, only English is supported.
Other languages are planned by end of this year, so you would see more and more languages
coming in for this particular service, but currently English is the main language.

All right, let's see if we have other questions on chat, Hadis, I think there is some coming
from Bernard, if I'm not wrong, there is one or two there, so, so, so, so, let me quickly
go through it.
There is two, there is two.

And there's a guy chat, Konstantin, how is the invoice ID recognised, is the service
looking for the word invoice? Can you repeat the question, sorry, I did not get that.
Bear with me, everyone's okay, sorry.

How is the invoice ID recognised, is the service looking for the word invoice?

No, so, if you look at the different invoices, here you see there is an invoice number written
like that, if you look at this particular invoice, here the invoice, again, okay, that's
the same, but I've seen invoice ID, I've seen invoice number, I've seen other things
as well, so here it picks it up just like that, so, again, the service is intelligent,
but I always recommend please test with your sample invoices as well, so in our demo, we
don't have all similar formats, and there are, you know, it is picking up invoice numbers
pretty neatly.

Okay, Violeta, do you want me to keep going with the ones in chat?
If you spotted another one, please.

This is from Bernard, does the word, I think I'm, I think it might be a bigger question
here, but this work for readable PDFs only, that was his first part, and the second part
is, can file transfer also be used providing, well, sure, also be used providing the document
to an external archiving, I think what he means is, can you transfer the file after
to an external archiving system, if I didn't get that right, Bernhardt, come back and chatting
will qualify.

So I think the first question was about the file format, if I understand correctly, so
PDF, no, it supports currently images, JPEG-TIF, and a few other formats and PDFs, so I think
there are four formats that it supports, which you can easily find in the documentation.

On the second question, can we store it somewhere else?

Yes, again, if you are using Oracle Integration Cloud for end-to-end automation, we provide
a lot of adapters, and as I mentioned, there are technology adapters as well, so using
those adapters, you can actually store the final output to either an application or an
object storage, maybe you want to store it in a different object storage out of OCI,
you can do that.

All right, thank you, Haris.

One thing, I noticed Vinaynka, sorry if I'm saying your name incorrectly, she had raised
her hand a couple of times, if she has a question, let us know.
I asked on chat, if there is any help we can give, I got no answer, we got no answer so
far.
I just wanted to make sure.

Thanks for spotting that, yeah, yeah, yeah, all right, all right, so let's wrap up quickly
actually, because we are over the time already, let's do the quick recap on the useful resources
that you guys can use.

So firstly, it's the Cloud Coaching Events page where you can go to check any of our
upcoming sessions.
The only important thing that you need to be aware is that we host events on a weekly
basis every Wednesday, same hour as today.
You will see a Cloud Coaching session in the schedule.

And for today, as Tom shared on chat already, there is a boost call that you guys can register
to and have a private discussion with Haris, only on the topic that we cover today.
So this is not a support call, it's just a general discussion.
So we are not replacing any of the current workload discussions that you guys might have.

There are two boost calls that you can register to, the time is 20 minutes for each.
The date is the 5th of July from 1pm summer time, CET time.
So the link will be shared on chat, thank you Tom for sharing it.

First come for CERT, so in case you would like to have this private call with Haris,
feel free to book your slot.
And there is a slide with the useful documentation regarding the OCI services, trainings available.
FYI, until 31st of August, you can train yourself and get a certification for free.
So if anyone interested in getting this, feel free to use the link that we shared here on
the free OCI certification coming from Oracle University.

And here is another slide and I won't talk about it because you can try it yourself after
the session.
A PDF version of this slide will be available on the Miacloud coaching channel on public
Slack or CalDevRel.
So if anyone would like to get it, feel free to join our community and you will find it
there soon.
If you don't want to register to our community and you would like to get a copy of this slide
via email, feel free to email us and we will be more than happy to share.
I see that there are any questions that we didn't answer, I don't think so, right?
I think we got them all.

If we missed any, by the way, post them over on Slack and we will follow up.

Yeah, for the ones that we didn't touch, feel free to use the channel and come back to us
and we will be more than happy to provide an answer.
Thank you all for being here together with us.
Thank you, Haris, for presenting this great demo and presentation.
We hope to see you soon in Cloud Coaching sessions.

Enjoy the rest of the day.

I know that today it's supposed to be a day off for you so thank you again for doing it
and we hope to see you soon in our sessions.
Bye-bye and enjoy the rest of the day.
Thanks everyone.
Bye-bye.
