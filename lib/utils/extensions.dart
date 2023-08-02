// ignore_for_file: unnecessary_string_escapes
import 'dart:math';

// Character constants.
const int _hashCodeUnit = 35; // #
const int _minDecimalEscapeLength = 4; // x
const int _xCodeUnit = 120; // &#x0;
const int _chunkLength = 18;

extension StringExtension on String {
  String capitalize() {
    if (this != '') {
      return '${this[0].toUpperCase()}${substring(1)}';
    } else {
      return '';
    }
  }

  String unescapeHtml() {
    // Return early if possible.
    if (!contains('&')) return this;

    final buf = StringBuffer();
    var offset = 0;

    while (true) {
      final nextAmp = indexOf('&', offset);
      if (nextAmp == -1) {
        // Rest of string.
        buf.write(substring(offset));
        break;
      }
      buf.write(substring(offset, nextAmp));
      offset = nextAmp;

      var chunk = substring(offset, min(length, offset + _chunkLength));

      // Try &#123; and &#xff;
      if (chunk.length > _minDecimalEscapeLength &&
          chunk.codeUnitAt(1) == _hashCodeUnit) {
        final nextSemicolon = chunk.indexOf(';');
        if (nextSemicolon != -1) {
          var hex = chunk.codeUnitAt(2) == _xCodeUnit;
          var str = chunk.substring(hex ? 3 : 2, nextSemicolon);
          final ord = int.tryParse(str, radix: hex ? 16 : 10) ?? -1;
          if (ord != -1) {
            buf.write(String.fromCharCode(ord));
            offset += nextSemicolon + 1;
            continue;
          }
        }
      }

      // Try &nbsp;
      var replaced = false;
      for (var i = 0; i < unescapMap.length; i++) {
        var key = unescapMap[i].keys.first;
        var value = unescapMap[i].values.first;
        if (chunk.startsWith(key)) {
          buf.write(value);
          offset += key.length;
          replaced = true;
          break;
        }
      }
      if (!replaced) {
        buf.write('&');
        offset += 1;
      }
    }

    return buf.toString();
  }

  String removeHtmlTags() {
    return replaceAllMapped(RegExp(r'<[^>]*>|&[^;]+;'), (match) {
      return '';
    });
  }

  String formatNumber({int fractionDigits = 1}) {
    final number = int.tryParse(this);
    if (number == null || number < 1000) {
      return this;
    } else if (number < 1000000) {
      return '${(number / 1000).toStringAsFixed(fractionDigits)}K';
    } else {
      return '${(number / 1000000).toStringAsFixed(fractionDigits)}M';
    }
  }
}

const List<Map<String, String>> unescapMap = [
  {'&DiacriticalGrave;': '`'},
  {'&NonBreakingSpace;': ' '},
  {'&DiacriticalAcute;': '´'},
  {'&VerticalLine;': '|'},
  {'&centerdot;': '·'},
  {'&DoubleDot;': '¨'},
  {'&PlusMinus;': '±'},
  {'&CenterDot;': '·'},
  {'&UnderBar;': '_'},
  {'&circledR;': '®'},
  {'&Cedilla;': '¸'},
  {'&NewLine;': '\n'},
  {'&brvbar;': '¦'},
  {'&percnt;': '%'},
  {'&midast;': '*'},
  {'&lbrace;': '{'},
  {'&verbar;': '|'},
  {'&period;': '.'},
  {'&rbrace;': '}'},
  {'&yacute;': 'ý'},
  {'&curren;': '¤'},
  {'&uacute;': 'ú'},
  {'&otilde;': 'õ'},
  {'&equals;': '='},
  {'&ugrave;': 'ù'},
  {'&commat;': '@'},
  {'&oslash;': 'ø'},
  {'&plusmn;': '±'},
  {'&divide;': '÷'},
  {'&lbrack;': '['},
  {'&dollar;': '\$'},
  {'&middot;': '·'},
  {'&rbrack;': ']'},
  {'&Oacute;': 'Ó'},
  {'&lowbar;': '_'},
  {'&frac14;': '¼'},
  {'&frac12;': '½'},
  {'&frac34;': '¾'},
  {'&iquest;': '¿'},
  {'&Agrave;': 'À'},
  {'&Aacute;': 'Á'},
  {'&Atilde;': 'Ã'},
  {'&oacute;': 'ó'},
  {'&Egrave;': 'È'},
  {'&Eacute;': 'É'},
  {'&Igrave;': 'Ì'},
  {'&Iacute;': 'Í'},
  {'&Ntilde;': 'Ñ'},
  {'&Ograve;': 'Ò'},
  {'&Otilde;': 'Õ'},
  {'&Oslash;': 'Ø'},
  {'&Ugrave;': 'Ù'},
  {'&Uacute;': 'Ú'},
  {'&Yacute;': 'Ý'},
  {'&agrave;': 'à'},
  {'&aacute;': 'á'},
  {'&atilde;': 'ã'},
  {'&ccedil;': 'ç'},
  {'&egrave;': 'è'},
  {'&eacute;': 'é'},
  {'&igrave;': 'ì'},
  {'&iacute;': 'í'},
  {'&ntilde;': 'ñ'},
  {'&ograve;': 'ò'},
  {'&Ccedil;': 'Ç'},
  {'&ecirc;': 'ê'},
  {'&acute;': '´'},
  {'&curren': '¤'},
  {'&ocirc;': 'ô'},
  {'&brvbar': '¦'},
  {'&oacute': 'ó'},
  {'&pound;': '£'},
  {'&ograve': 'ò'},
  {'&ugrave': 'ù'},
  {'&ntilde': 'ñ'},
  {'&colon;': ':'},
  {'&laquo;': '«'},
  {'&icirc;': 'î'},
  {'&oslash': 'ø'},
  {'&iacute': 'í'},
  {'&thorn;': 'þ'},
  {'&yacute': 'ý'},
  {'&divide': '÷'},
  {'&Egrave': 'È'},
  {'&igrave': 'ì'},
  {'&strns;': '¯'},
  {'&iexcl;': '¡'},
  {'&plusmn': '±'},
  {'&eacute': 'é'},
  {'&szlig;': 'ß'},
  {'&egrave': 'è'},
  {'&micro;': 'µ'},
  {'&ccedil': 'ç'},
  {'&middot': '·'},
  {'&cedil;': '¸'},
  {'&ucirc;': 'û'},
  {'&aelig;': 'æ'},
  {'&comma;': ','},
  {'&raquo;': '»'},
  {'&uacute': 'ú'},
  {'&frac14': '¼'},
  {'&frac12': '½'},
  {'&quest;': '?'},
  {'&frac34': '¾'},
  {'&iquest': '¿'},
  {'&Agrave': 'À'},
  {'&Aacute': 'Á'},
  {'&Acirc;': 'Â'},
  {'&Atilde': 'Ã'},
  {'&Aring;': 'Å'},
  {'&angst;': 'Å'},
  {'&AElig;': 'Æ'},
  {'&aring;': 'å'},
  {'&THORN;': 'Þ'},
  {'&Eacute': 'É'},
  {'&Ecirc;': 'Ê'},
  {'&Igrave': 'Ì'},
  {'&atilde': 'ã'},
  {'&Iacute': 'Í'},
  {'&Icirc;': 'Î'},
  {'&acirc;': 'â'},
  {'&grave;': '`'},
  {'&Ntilde': 'Ñ'},
  {'&Ograve': 'Ò'},
  {'&aacute': 'á'},
  {'&Oacute': 'Ó'},
  {'&Ocirc;': 'Ô'},
  {'&fjlig;': 'f'},
  {'&Otilde': 'Õ'},
  {'&agrave': 'à'},
  {'&times;': '×'},
  {'&otilde': 'õ'},
  {'&Oslash': 'Ø'},
  {'&Ugrave': 'Ù'},
  {'&Uacute': 'Ú'},
  {'&Ucirc;': 'Û'},
  {'&Yacute': 'Ý'},
  {'&Ccedil': 'Ç'},
  {'&macr;': '¯'},
  {'&sup2;': '²'},
  {'&lsqb;': '['},
  {'&semi;': ';'},
  {'&sup3;': '³'},
  {'&Acirc': 'Â'},
  {'&bsol;': '\\'},
  {'&plus;': '+'},
  {'&Auml;': 'Ä'},
  {'&aring': 'å'},
  {'&ocirc': 'ô'},
  {'&acute': '´'},
  {'&Aring': 'Å'},
  {'&sect;': '§'},
  {'&AElig': 'Æ'},
  {'&copy;': '©'},
  {'&micro': 'µ'},
  {'&rsqb;': ']'},
  {'&times': '×'},
  {'&yuml;': 'ÿ'},
  {'&para;': '¶'},
  {'&cent;': '¢'},
  {'&Ecirc': 'Ê'},
  {'&Euml;': 'Ë'},
  {'&auml;': 'ä'},
  {'&thorn': 'þ'},
  {'&nbsp;': ' '},
  {'&uuml;': 'ü'},
  {'&ouml;': 'ö'},
  {'&ucirc': 'û'},
  {'&Icirc': 'Î'},
  {'&Iuml;': 'Ï'},
  {'&rcub;': '}'},
  {'&acirc': 'â'},
  {'&COPY;': '©'},
  {'&cedil': '¸'},
  {'&iexcl': '¡'},
  {'&apos;': "'"},
  {'&sup1;': '¹'},
  {'&ordf;': 'ª'},
  {'&ordm;': 'º'},
  {'&iuml;': 'ï'},
  {'&Ocirc': 'Ô'},
  {'&pound': '£'},
  {'&raquo': '»'},
  {'&Ouml;': 'Ö'},
  {'&laquo': '«'},
  {'&euml;': 'ë'},
  {'&nvgt;': '>'},
  {'&lpar;': '('},
  {'&QUOT;': '\"'},
  {'&lcub;': '{'},
  {'&half;': '½'},
  {'&rpar;': ')'},
  {'&icirc': 'î'},
  {'&ecirc': 'ê'},
  {'&Ucirc': 'Û'},
  {'&Uuml;': 'Ü'},
  {'&szlig': 'ß'},
  {'&vert;': '|'},
  {'&excl;': '!'},
  {'&nvlt;': '<'},
  {'&THORN': 'Þ'},
  {'&quot;': '\"'},
  {'&aelig': 'æ'},
  {'&bne;': '='},
  {'&Ouml': 'Ö'},
  {'&quot': '\"'},
  {'&yuml': 'ÿ'},
  {'&ouml': 'ö'},
  {'&ETH;': 'Ð'},
  {'&Iuml': 'Ï'},
  {'&AMP;': '&'},
  {'&Euml': 'Ë'},
  {'&auml': 'ä'},
  {'&amp;': '&'},
  {'&Auml': 'Ä'},
  {'&sup1': '¹'},
  {'&ordm': 'º'},
  {'&ast;': '*'},
  {'&para': '¶'},
  {'&nbsp': ' '},
  {'&num;': '#'},
  {'&sup3': '³'},
  {'&sup2': '²'},
  {'&shy;': '­'},
  {'&uuml': 'ü'},
  {'&div;': '÷'},
  {'&euml': 'ë'},
  {'&deg;': '°'},
  {'&macr': '¯'},
  {'&REG;': '®'},
  {'&reg;': '®'},
  {'&Uuml': 'Ü'},
  {'&not;': '¬'},
  {'&ordf': 'ª'},
  {'&iuml': 'ï'},
  {'&eth;': 'ð'},
  {'&COPY': '©'},
  {'&copy': '©'},
  {'&Dot;': '¨'},
  {'&cent': '¢'},
  {'&die;': '¨'},
  {'&uml;': '¨'},
  {'&sect': '§'},
  {'&sol;': '/'},
  {'&QUOT': '\"'},
  {'&yen;': '¥'},
  {'&Tab;': '\t'},
  {'&Hat;': '^'},
  {'&ETH': 'Ð'},
  {'&pm;': '±'},
  {'&deg': '°'},
  {'&REG': '®'},
  {'&reg': '®'},
  {'&shy': '­'},
  {'&not': '¬'},
  {'&uml': '¨'},
  {'&yen': '¥'},
  {'&GT;': '>'},
  {'&gt;': '>'},
  {'&LT;': '<'},
  {'&lt;': '<'},
  {'&AMP': '&'},
  {'&amp': '&'},
  {'&eth': 'ð'},
  {'&GT': '>'},
  {'&gt': '>'},
  {'&LT': '<'},
  {'&lt': '<'}
];
