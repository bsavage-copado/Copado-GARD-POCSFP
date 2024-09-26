@isTest
private class BSMSmokeCLI1Test {

@isTest
    private static void testBSMSmokeCLI1() {
        User usr = createTestUser();
        List<Note> notes = new List<Note>();
        // Create Note records because we can
        // Like we really can
        for (Integer i = 0; i < 2; i++) {
            Note note = new Note();
            note.Title = 'Test Note ' + i;
            note.body = 'Test Body';
            notes.add(note);
        }
        Database.insert(notes, false, AccessLevel.USER_MODE);

        System.runAs(usr) {
            Test.startTest();
            BSMSmokeCLI1 bsm = new BSMSmokeCLI1();
            bsm.sendNotesData(notes);
            Test.stopTest();
        }

        // Asserts
        // ...
    }
}