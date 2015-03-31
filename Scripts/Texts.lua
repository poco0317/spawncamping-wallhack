local shortDiffName = {
	Difficulty_Beginner	= 'BG',
	Difficulty_Easy		= 'EZ',
	Difficulty_Medium	= 'NM',
	Difficulty_Hard		= 'HD',
	Difficulty_Challenge= 'IN',
	Difficulty_Edit 	= 'ED',
	Difficulty_Couple	= 'CP',
	Difficulty_Routine	= 'RT',
	Beginner			= 'BG',
	Easy				= 'EZ',
	Normal				= 'NM',
	Hard				= 'HD',
	Insane 				= 'IN',
	Edit 				= 'ED',
	Couple				= 'CP',
	Routine				= 'RT'
}

local DiffName = {
	Difficulty_Beginner	= 'Beginner',
	Difficulty_Easy		= 'Easy',
	Difficulty_Medium	= 'Normal',
	Difficulty_Hard		= 'Hard',
	Difficulty_Challenge= 'Insane',
	Difficulty_Edit 	= 'Edit',
	Difficulty_Couple	= 'Couple',
	Difficulty_Routine	= 'Routine',
}

local gradeString = {
	Grade_Tier01 = 'AAAA',
	Grade_Tier02 = 'AAA',
	Grade_Tier03 = 'AA',
	Grade_Tier04 = 'A',
	Grade_Tier05 = 'B',
	Grade_Tier06 = 'C',
	Grade_Tier07 = 'D',
	Grade_Failed = 'F'
}

function getShortDifficulty(diff)
	if diff ~= nil and diff ~= "" then
		return shortDiffName[diff]
	else
		return "ED"
	end
end;

function getDifficulty(diff)
	if diff ~= nil and diff ~= "" then
		return DiffName[diff]
	elseif diff == "" then
		return "Edit"
	else 
		return diff
	end
end;

function getGradeStrings(diff)
	if diff ~= nil then
		return gradeString[diff] or diff
	end
end;