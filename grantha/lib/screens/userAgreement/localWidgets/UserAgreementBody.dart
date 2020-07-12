import 'package:flutter/material.dart';
import 'package:grantha/screens/userAgreement/localWidgets/OrderedList.dart';
import 'package:grantha/screens/userAgreement/localWidgets/Paragraph.dart';
import 'package:grantha/screens/userAgreement/localWidgets/TitleAndBodySection.dart';

class UserAgreementBody extends StatefulWidget {
  @override
  _UserAgreementBodyState createState() => _UserAgreementBodyState();
}

class _UserAgreementBodyState extends State<UserAgreementBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          TitleAndBodySection(
            title: "Grantha Service Conditions of Use",
            body: "Last updated: June 20, 2020",
          ),
          Paragraph(
            body:
                'This is an agreement between you and Grantha, Inc(with its affiliates, "Grantha", "we" or "us") regarding the digital spoken word audio entertainment and e-book service operated by Grantha (the "Service").',
          ),
          Paragraph(
            body:
                'These Grantha Conditions of Use, the rules, policies and guidance we provide regarding the Service, and the following terms (collectively, as they may be changed over time, the "Terms") form a part of this agreement and govern your use of the service.',
          ),
          Paragraph(
            body:
                'By signing up for or using the service, you agree to the Terms.',
          ),
          TitleAndBodySection(
            title: 'Your Account; Notification Preferences',
            body:
                'If you do not have a Grantha account, you will need to establish an account with Grantha app or login using Google or Facebook accounts to use the Service. The payment methods which you submitted during your account setup will be used for your Grantha account. To manage your Grantha notification preferences, please check the notification settings in the application.',
          ),
          TitleAndBodySection(
            title: 'Membership Plans',
            body:
                'As part of our Service, we offer membership plans which may be subject to changes of features from time to time. If you sign up for a membership plan, you agree to the terms, conditions and limitations associated with them that are as informed on our application.',
          ),
          TitleAndBodySection(
            title: 'Credits',
            body:
                'As part of a membership plan or a Service promotion, we issue you credits redeemable for content on the Service ("Credits"). Credits may only be redeemed on the Service, have no cash value, are non-transferrable and non-refundable. All Credits are valid for a limited time as described in the applicable membership and promotional terms and conditions. Credits expire immediately upon the cancellation or termination of your membership unless used prior to cancellation or termination.',
          ),
          TitleAndBodySection(
            title: 'Purchased Content',
            body:
                'Once we have made purchased content available to you for download, we encourage you to download the content promptly after. As a convenience to you we may continue to make your purchased content available for re-download through your Service account, but we do not guarantee that such content will be available for re-download and Grantha will not be liable to you if it becomes unavailable for further re-download.',
          ),
          TitleAndBodySection(
            title: 'Promotional and Membership Content',
            body:
                'We may make content available to you from time to time through the Service for which a purchase is not required. You will have access to this content only for so long as we make it available generally or, where it is provided as a benefit of a membership plan, for so long as you remain an active member of your plan in good standing. We may also remove this content from your account, devices and applications or otherwise restrict your ability to access it.',
          ),
          TitleAndBodySection(
            title: 'Content Availability',
            body:
                'We may add or remove purchasable, promotional and membership content (collectively, "Content") from our catalog, membership plans and our Service at any time and make no guarantee as to the availability of specific Content in any membership plan or as to any minimum amount of Content in any membership plan.',
          ),
          TitleAndBodySection(
            title: 'Fees and Renewal',
            body:
                'Fees for purchased content, membership plans, subscriptions and other services will be stated at the time of your purchase or sign-up, as applicable, and provided in our help pages. The fees for membership plans may change at any time. Fees may be subject to tax, collected by us or a third party through which you transact, and are non-refundable except in the specific circumstances described in these Terms. We accept credit cards and debit cards for payment of your membership fees.If all credit cards or debit cards we have on file for you are declined for payment of your membership or subscription fees, we may cancel your membership or subscription, as applicable, unless you provide us with a new valid payment method. If you do so and are successfully charged before your membership or subscription is cancelled, your new membership or subscription period will be based on the original renewal date and not the date of the successful charge.',
          ),
          TitleAndBodySection(
            title: 'Membership and Subscription Cancellation',
            body:
                'You may cancel your membership plan and any subscriptions by visiting your account details page provided on Grantha application (your "My Account") and adjusting your membership settings and subscription preferences. If you cancel your membership or subscription, you will not receive a refund of any fees already paid. Your member benefits terminate when your membership is cancelled, but cancellation does not terminate your license and access to purchased content.',
          ),
          TitleAndBodySection(
            title: 'Service Restrictions',
            body:
                'We reserve the right to accept or refuse membership or to restrict use of the Service in our discretion. You may not transfer or assign your membership or any Service benefits. We may take actions we deem reasonably necessary to prevent fraud and abuse, including placing restrictions on the amount of content or other services that can be accessed from the Service at any one time.',
          ),
          Paragraph(
            body: 'Content Restrictions',
          ),
          OrderedList(
            itemList: [
              'transfer, copy or display Content, except as permitted in this Agreement',
              'sell, rent, lease, distribute, or broadcast any Content',
              'remove any proprietary notices or labels on Content;',
              'attempt to disable, bypass, modify, defeat, or otherwise circumvent any digital rights management or other protection system applied to Content or used as part of the Service',
              'use the Service or Content for any commercial or illegal purpose'
            ],
          ),
          TitleAndBodySection(
            title: 'Promotional Trial Memberships',
            body:
                'We sometimes offer certain customers various trial or other promotional memberships, which are subject to the Terms except as otherwise stated in the promotional offers. We reserve the right, in our sole discretion, to determine your eligibility. Trial members may, at any time (through your Account Details), choose not to continue to paid membership by cancelling prior to the end of the trial period. If a trial offer or a promotion requires you to have a valid payment instrument on file, such as a credit card or other permitted payment method, we may validate that payment method including by requesting a temporary authorization from the financial institution issuing your payment instrument. If we determine that your payment instrument is invalid, without limiting any of our other rights, we may revoke any benefits, Credits or Content you may have received as part of the offer.',
          ),
          TitleAndBodySection(
            title: 'Agreement Changes',
            body:
                'We may, in our discretion, change the Terms and all elements of them and any aspect of the Service, without notice to you. If any change to the Terms is found invalid, void, or for any reason unenforceable, that change is severable and does not affect the validity and enforceability of any remaining changes and the remainder of the Terms. Your continued use of the Service after we change the Terms constitutes your acceptance of the changes. If you do not agree to any changes, you must not use the Service and must cancel your membership.',
          ),
          TitleAndBodySection(
            title: 'Termination by Us',
            body:
                'Our business may change over time and we reserve the right to cancel the Service and any membership plan in whole or in part, and to terminate your membership and use of the Service at our discretion without notice. If we do so, we will give you a prorated refund based on the number of days remaining in your membership unless we terminate your membership for conduct that we determine, in our discretion, violates the Terms, violates any applicable law, involves fraud or misuse of the Service, or is harmful to our interests or another user. Our failure to insist upon or enforce your strict compliance with the Terms will not constitute a waiver of any of our rights.',
          ),
          TitleAndBodySection(
            title: 'Third-Party Websites, Advertisers or Services',
            body:
                'Grantha  application may contain links to third-party websites, advertisers, or services that are not owned or controlled by Grantha, Inc. Grantha has no control over and assumes no responsibility for, the content, privacy policies, or practices of any third party websites or services. If you access a third party website from Grantha, you do so at your own risk, and you understand that this Agreement and Grantha’ Privacy Policy does not apply to your use of such sites. You expressly relieve Grantha from any and all liability arising from your use of any third-party website or services or third party owned content.',
          ),
          Paragraph(
            body:
                'Additionally, your dealings with or participation in promotions of advertisers found on Grantha, including payment and any other terms are solely between you and such advertisers. You agree that Grantha shall not be responsible for any loss or damage of any sort relating to your dealings with such advertisers.',
          ),
          Paragraph(
            body:
                'We encourage you to be aware of when you leave the Service and to read the terms and conditions and privacy policy of any third-party website or service that you vist.',
          ),
        ],
      ),
    );
  }
}
