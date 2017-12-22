test('font/install',
     test_driver,
     args: 'font/install',
     env: testenv,
     timeout: 120)

fontforge = find_program('fontforge', required: false)
if fontforge.found()
test('font/sfd2ttf',
     test_driver,
     args: 'font/sfd2ttf',
     env: testenv,
     timeout: 120)
endif
