import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_builder/progress_builder.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// A page with email and password fields to login
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  FormGroup get _form => fb.group({
        'email': FormControl<String>(
          validators: [
            Validators.required,
            Validators.email,
          ],
        ),
        'password': FormControl<String>(
          validators: [
            Validators.required,
            Validators.minLength(4),
          ],
        ),
      });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: AutofillGroup(
        child: DefaultActionController(
          child: ReactiveFormBuilder(
              form: () => _form,
              builder: (context, form, child) => ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding * 2,
                      vertical: kPadding * 3,
                    ),
                    children: [
                      Text(
                        'Welcome to DFChat',
                        style: textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      Text(
                        'Please login to continue',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      ReactiveTextField(
                        formControlName: 'email',
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                        ),
                        autofillHints: const [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (_) => form.focus('password'),
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'Email must not be empty',
                          ValidationMessage.email: (_) =>
                              'Email value must be a valid email',
                        },
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      ReactiveTextField(
                        formControlName: 'password',
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                        ),
                        obscureText: true,
                        autofillHints: const [
                          AutofillHints.password,
                        ],
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        onSubmitted: (control) => DefaultActionController.of(
                          context,
                        )?.add(ActionType.start),
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'Password must not be empty',
                          ValidationMessage.minLength: (_) =>
                              'Password must be at least 4 characters',
                        },
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      ReactiveFormConsumer(
                        builder: (context, form, _) => LinearProgressBuilder(
                          action: (_) async {
                            final router = context.router.root;
                            final guardInProgress =
                                router.activeGuardObserver.guardInProgress;
                            final email = form.value['email'] as String?;
                            final password = form.value['password'] as String?;
                            if (email != null && password != null) {
                              await context
                                  .read<AuthCubit>()
                                  .loginWithEmailPassword(
                                    email: email,
                                    password: password,
                                  );
                            }
                            if (!guardInProgress) {
                              await router.replace(const HomeRoute());
                            }
                          },
                          builder: (_, action, __) => ElevatedButton(
                            onPressed: form.valid ? action : null,
                            child: const Text('Login'),
                          ),
                        ),
                      ),
                    ],
                  )),
        ),
      ),
    );
  }
}
