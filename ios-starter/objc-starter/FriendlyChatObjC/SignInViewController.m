//
//  Copyright (c) 2016 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "SignInViewController.h"
#import "FirebaseAuthUI/FIRAuthUI.h"
#import "FirebaseAuthProviderGoogle/FIRGoogleSignInAuthProvider.h"
#import "FirebaseAuth/FIRUser.h"
#import "FirebaseApp/FIRFirebaseApp.h"
#import "FirebaseApp/FIRFirebaseOptions.h"
#import "Constants.h"
@import Firebase.SignIn;
@import Firebase.Core;

@interface SignInViewController ()<FIRAuthUIDelegate>

@property(nonatomic, weak) IBOutlet UIButton *signInButton;

@end

@implementation SignInViewController

- (IBAction)didTapSignIn:(UIButton *)sender {
  [self signedIn];
}

- (void)signedIn {
  [self performSegueWithIdentifier:SeguesSignInToFp sender:nil];
}

@end
