using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


    public static class SqlExternalFunctions
    {
    [Microsoft.SqlServer.Server.SqlFunction]
    public static string CharacterReplacement (string str)
    {
        if (string.IsNullOrWhiteSpace(str))
            return null;
        return str.Replace("&#10078;", "\"").Replace("&#10077;", "\"");
    }
    }
