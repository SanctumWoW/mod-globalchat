DELETE FROM `acore_string` WHERE `entry` IN (17000,17001,17002,17003,17004,17005,17006);

INSERT INTO `acore_string` (`entry`, `content_default`, `locale_koKR`, `locale_frFR`, `locale_deDE`, `locale_zhCN`, `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`) VALUES
(17000, 'Player |cffff0000%s|r tried to post forbidden phrase: |cffff0000%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17001, 'Player |cffff0000%s|r tried to post URL: |cffff0000%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17002, '%s has |cffff0000%s|r the WorldChat.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17003, '%s has muted |cffff0000%s|r for %s in the WorldChat.|r Reason: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17004, '%s has permanently muted |cffff0000%s|r in the WorldChat.|r Reason: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17005, '|cffff0000You have been muted for %s in the WorldChat.|r Reason: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17006, '|cffff0000You have been permanently muted in the WorldChat.|r Reason: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);                                                                                                                                                                           ;

DELETE FROM `command` WHERE `name` IN ('world','w','chat','c','joinworld','leaveworld','wenable','wdisable','wmute','wunmute','winfo','walliance','whorde','wblacklist','wblacklist add','wblacklist remove','wblacklist reload');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('world', 0, 'Syntax: .world $text\nWrite a message in the WorldChat.\nAdditional commands: .joinworld & .leaveworld'),
('w', 0, 'Syntax: .w $text\nWrite a message in the WorldChat.\nAdditional commands: .joinworld & .leaveworld'),
('chat', 0, 'Syntax: .chat $text\nWrite a message in the WorldChat.\nAdditional commands: .joinworld & .leaveworld'),
('c', 0, 'Syntax: .c $text\nWrite a message in the WorldChat.\nAdditional commands: .joinworld & .leaveworld'),
('joinworld', 0, 'Join the WorldChat.'),
('leaveworld', 0, 'Leave the WorldChat.'),
('wenable', 1, 'Enables WorldChat.'),
('wdisable', 1, 'Disables WorldChat.'),
('wmute', 1, 'Syntax: $playername $bantime $reason\nMutes a player in the WorldChat\n$bantime: Negative values lead to perment mute. Otherwise use a timestring like "1d2h30s".'),
('wunmute', 1, 'Syntax: $playername\nUnmutes player in the WorldChat.'),
('winfo', 1, 'Syntax: $playername\nGives WorldChat information about a player.'),
('walliance', 1, 'Syntax: .walliance $text\nWrite a message in the Alliance WorldChat.'),
('whorde', 1, 'Syntax: .whorde $text\nWrite a message in the Horde WorldChat.'),
('wblacklist', 1, 'Type .wblacklist to see the list of possible subcommands or .help wblacklist $subcommand to see info on subcommands.'),
('wblacklist add', 1, 'Syntax: .wblacklist add $text\nAdds a phrase to the WorldChat Profanity Blacklist.'),
('wblacklist remove', 1, 'Syntax: .wblacklist remove $text\nRemoves a phrase from the WorldChat Profanity Blacklist.'),
('wblacklist reload', 1, 'Reloads the WorldChat Profanity Blacklist.');
