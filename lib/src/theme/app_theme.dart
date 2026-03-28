import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Dominium "La Guerra Lumínica" theme — Cyberpunk meets Strava.
class AppTheme {
  AppTheme._();

  // ── Paleta "La Guerra Lumínica" ───────────────────────────────────────────

  /// Verde Criptón – Acento Principal (Energía / Ganar). Zona tuya.
  static const Color cryptonGreen = Color(0xFF00FF41);

  /// Naranja Radiactivo – Acento de Conflicto (Disputa / Urgencia).
  static const Color radioactiveOrange = Color(0xFFFFD300);

  /// Rojo Pulso – Acento Enemigo (Zona rival / Competitividad).
  static const Color pulseRed = Color(0xFFFF073A);

  /// Asfalto Profundo – Fondo base nocturno.
  static const Color deepAsphalt = Color(0xFF1A1A1A);

  /// Blanco Puro – Texto principal.
  static const Color pureWhite = Color(0xFFFFFFFF);

  /// Gris Técnico – Subtexto y elementos secundarios.
  static const Color technicalGray = Color(0xFF808080);

  // ── Aliases semánticos (compatibilidad con código existente) ─────────────
  static const Color primaryColor = cryptonGreen;
  static const Color secondaryColor = radioactiveOrange;
  static const Color accentColor = cryptonGreen;
  static const Color warningColor = radioactiveOrange;
  static const Color errorColor = pulseRed;
  static const Color successColor = cryptonGreen;

  // ── Superficies internas ─────────────────────────────────────────────────
  static const Color _surfaceDark = Color(0xFF242424);
  static const Color _cardDark = Color(0xFF2A2A2A);
  static const Color _borderDark = Color(0xFF3A3A3A);

  static const Color _surfaceLight = Color(0xFFF5F5F5);
  static const Color _cardLight = Color(0xFFFFFFFF);
  static const Color _borderLight = Color(0xFFE0E0E0);

  // Versiones apagadas del verde para uso en fondos claros
  static const Color _greenLight = Color(0xFF00B52C);
  static const Color _redLight = Color(0xFFCC0028);
  static const Color _orangeLight = Color(0xFFAA8800);

  // ── Tipografía: Montserrat (títulos) + Inter (cuerpo) ────────────────────
  //
  // NOTA DE USO: Los estilos Display/Headline/Title usan Montserrat Bold.
  // Para el efecto "poder" aplica .toUpperCase() en los widgets de cabecera.
  //
  static TextTheme _buildTextTheme({
    required Color text,
    required Color subtext,
  }) {
    return TextTheme(
      // Display — Montserrat ExtraBold ─────────────────────────────────────
      displayLarge: GoogleFonts.montserrat(
        fontSize: 57,
        fontWeight: FontWeight.w900,
        color: text,
        letterSpacing: 2.0,
        height: 1.12,
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 45,
        fontWeight: FontWeight.w800,
        color: text,
        letterSpacing: 1.5,
        height: 1.16,
      ),
      displaySmall: GoogleFonts.montserrat(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: text,
        letterSpacing: 1.0,
        height: 1.22,
      ),
      // Headline — Montserrat Bold ─────────────────────────────────────────
      headlineLarge: GoogleFonts.montserrat(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: text,
        letterSpacing: 1.0,
      ),
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: text,
        letterSpacing: 0.5,
      ),
      headlineSmall: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: text,
        letterSpacing: 0.25,
      ),
      // Title — Montserrat SemiBold ─────────────────────────────────────────
      titleLarge: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: text,
      ),
      titleMedium: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: text,
        letterSpacing: 0.15,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: text,
        letterSpacing: 0.1,
      ),
      // Body — Inter Regular ────────────────────────────────────────────────
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: text,
        letterSpacing: 0.5,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: text,
        letterSpacing: 0.25,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: subtext,
        letterSpacing: 0.4,
      ),
      // Label — Inter Medium ────────────────────────────────────────────────
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: text,
        letterSpacing: 0.1,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: subtext,
        letterSpacing: 0.5,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: subtext,
        letterSpacing: 0.5,
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // TEMA OSCURO — primario, identidad visual "La Guerra Lumínica"
  // ═══════════════════════════════════════════════════════════════════════════
  static ThemeData get darkTheme {
    const cs = ColorScheme(
      brightness: Brightness.dark,
      // Verde Criptón
      primary: cryptonGreen,
      onPrimary: deepAsphalt,
      primaryContainer: Color(0xFF003B12),
      onPrimaryContainer: cryptonGreen,
      // Naranja Radiactivo
      secondary: radioactiveOrange,
      onSecondary: deepAsphalt,
      secondaryContainer: Color(0xFF3D3000),
      onSecondaryContainer: radioactiveOrange,
      // Rojo Pulso
      tertiary: pulseRed,
      onTertiary: pureWhite,
      tertiaryContainer: Color(0xFF3D0010),
      onTertiaryContainer: pulseRed,
      // Error
      error: pulseRed,
      onError: pureWhite,
      errorContainer: Color(0xFF3D0010),
      onErrorContainer: pulseRed,
      // Superficies
      surface: _surfaceDark,
      onSurface: pureWhite,
      surfaceContainerHighest: _cardDark,
      onSurfaceVariant: technicalGray,
      outline: technicalGray,
      outlineVariant: _borderDark,
      shadow: Colors.black,
      scrim: Colors.black,
      inverseSurface: _surfaceLight,
      onInverseSurface: deepAsphalt,
      inversePrimary: _greenLight,
    );

    final tt = _buildTextTheme(text: pureWhite, subtext: technicalGray);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: cs,
      scaffoldBackgroundColor: deepAsphalt,
      textTheme: tt,
      primaryTextTheme: tt,
      // ── AppBar ────────────────────────────────────────────────────────────
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: _surfaceDark,
        foregroundColor: pureWhite,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: pureWhite,
          letterSpacing: 0.5,
        ),
        surfaceTintColor: Colors.transparent,
      ),
      // ── Card ──────────────────────────────────────────────────────────────
      cardTheme: CardThemeData(
        elevation: 4,
        color: _cardDark,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: _borderDark, width: 1),
        ),
      ),
      // ── FAB ───────────────────────────────────────────────────────────────
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: cryptonGreen,
        foregroundColor: deepAsphalt,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      // ── Buttons ───────────────────────────────────────────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cryptonGreen,
          foregroundColor: deepAsphalt,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: cryptonGreen,
          side: const BorderSide(color: cryptonGreen, width: 1.5),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: cryptonGreen,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      // ── Input ─────────────────────────────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _cardDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _borderDark, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: cryptonGreen, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: pulseRed, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: pulseRed, width: 2),
        ),
        hintStyle: GoogleFonts.inter(color: technicalGray, fontSize: 14),
        labelStyle: GoogleFonts.inter(color: technicalGray, fontSize: 14),
        floatingLabelStyle: GoogleFonts.inter(
          color: cryptonGreen,
          fontSize: 12,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
      // ── Divider ───────────────────────────────────────────────────────────
      dividerTheme: const DividerThemeData(color: _borderDark, thickness: 1),
      // ── Chip ──────────────────────────────────────────────────────────────
      chipTheme: ChipThemeData(
        backgroundColor: _cardDark,
        selectedColor: cryptonGreen,
        labelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        side: const BorderSide(color: _borderDark),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      // ── SnackBar ──────────────────────────────────────────────────────────
      snackBarTheme: SnackBarThemeData(
        backgroundColor: _cardDark,
        contentTextStyle: GoogleFonts.inter(color: pureWhite, fontSize: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
      // ── Bottom Navigation ─────────────────────────────────────────────────
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _surfaceDark,
        selectedItemColor: cryptonGreen,
        unselectedItemColor: technicalGray,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: cryptonGreen,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: technicalGray,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _surfaceDark,
        indicatorColor: Color(0x3300FF41), // cryptonGreen @ 20%
        surfaceTintColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: cryptonGreen,
            );
          }
          return GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: technicalGray,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: cryptonGreen);
          }
          return const IconThemeData(color: technicalGray);
        }),
      ),
      // ── ListTile ──────────────────────────────────────────────────────────
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        selectedTileColor: const Color(0x1A00FF41), // cryptonGreen @ 10%
        selectedColor: cryptonGreen,
        textColor: pureWhite,
        iconColor: technicalGray,
        subtitleTextStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: technicalGray,
        ),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: pureWhite,
        ),
      ),
      // ── Icons ─────────────────────────────────────────────────────────────
      iconTheme: const IconThemeData(color: technicalGray),
      primaryIconTheme: const IconThemeData(color: cryptonGreen),
      // ── Progress Indicator ────────────────────────────────────────────────
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: cryptonGreen,
        linearTrackColor: _borderDark,
        circularTrackColor: _borderDark,
      ),
      // ── Switch ────────────────────────────────────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (s) =>
              s.contains(WidgetState.selected) ? cryptonGreen : technicalGray,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? const Color(0x4D00FF41) // cryptonGreen @ 30%
              : _borderDark,
        ),
      ),
      // ── Slider ────────────────────────────────────────────────────────────
      sliderTheme: const SliderThemeData(
        activeTrackColor: cryptonGreen,
        inactiveTrackColor: _borderDark,
        thumbColor: cryptonGreen,
        overlayColor: Color(0x2900FF41),
      ),
      // ── TabBar ────────────────────────────────────────────────────────────
      tabBarTheme: TabBarThemeData(
        labelColor: cryptonGreen,
        unselectedLabelColor: technicalGray,
        indicatorColor: cryptonGreen,
        labelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        dividerColor: _borderDark,
      ),
      // ── Dialog ────────────────────────────────────────────────────────────
      dialogTheme: DialogThemeData(
        backgroundColor: _cardDark,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: pureWhite,
        ),
        contentTextStyle: GoogleFonts.inter(fontSize: 14, color: pureWhite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      // ── Bottom Sheet ──────────────────────────────────────────────────────
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: _surfaceDark,
        surfaceTintColor: Colors.transparent,
        dragHandleColor: _borderDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // TEMA CLARO — adaptado a la identidad visual, colores ligeramente
  // atenuados para legibilidad sobre fondos blancos.
  // ═══════════════════════════════════════════════════════════════════════════
  static ThemeData get lightTheme {
    const cs = ColorScheme(
      brightness: Brightness.light,
      primary: _greenLight,
      onPrimary: pureWhite,
      primaryContainer: Color(0xFFB8FFD0),
      onPrimaryContainer: Color(0xFF003B12),
      secondary: _orangeLight,
      onSecondary: pureWhite,
      secondaryContainer: Color(0xFFFFEDBA),
      onSecondaryContainer: Color(0xFF3D3000),
      tertiary: _redLight,
      onTertiary: pureWhite,
      tertiaryContainer: Color(0xFFFFD9E0),
      onTertiaryContainer: Color(0xFF3D0010),
      error: _redLight,
      onError: pureWhite,
      errorContainer: Color(0xFFFFD9E0),
      onErrorContainer: Color(0xFF3D0010),
      surface: _surfaceLight,
      onSurface: deepAsphalt,
      surfaceContainerHighest: Color(0xFFE8E8E8),
      onSurfaceVariant: Color(0xFF5A5A5A),
      outline: Color(0xFFBDBDBD),
      outlineVariant: _borderLight,
      shadow: Colors.black,
      scrim: Colors.black,
      inverseSurface: deepAsphalt,
      onInverseSurface: pureWhite,
      inversePrimary: cryptonGreen,
    );

    final tt = _buildTextTheme(
      text: deepAsphalt,
      subtext: const Color(0xFF5A5A5A),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: cs,
      scaffoldBackgroundColor: _surfaceLight,
      textTheme: tt,
      primaryTextTheme: tt,
      // ── AppBar ────────────────────────────────────────────────────────────
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: _cardLight,
        foregroundColor: deepAsphalt,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: deepAsphalt,
          letterSpacing: 0.5,
        ),
        surfaceTintColor: Colors.transparent,
      ),
      // ── Card ──────────────────────────────────────────────────────────────
      cardTheme: CardThemeData(
        elevation: 2,
        color: _cardLight,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: _borderLight, width: 1),
        ),
      ),
      // ── FAB ───────────────────────────────────────────────────────────────
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _greenLight,
        foregroundColor: pureWhite,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      // ── Buttons ───────────────────────────────────────────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _greenLight,
          foregroundColor: pureWhite,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _greenLight,
          side: const BorderSide(color: _greenLight, width: 1.5),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _greenLight,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      // ── Input ─────────────────────────────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _cardLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _borderLight, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _greenLight, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _redLight, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _redLight, width: 2),
        ),
        hintStyle: GoogleFonts.inter(
          color: const Color(0xFF9E9E9E),
          fontSize: 14,
        ),
        labelStyle: GoogleFonts.inter(
          color: const Color(0xFF5A5A5A),
          fontSize: 14,
        ),
        floatingLabelStyle: GoogleFonts.inter(color: _greenLight, fontSize: 12),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
      // ── Divider ───────────────────────────────────────────────────────────
      dividerTheme: const DividerThemeData(color: _borderLight, thickness: 1),
      // ── Chip ──────────────────────────────────────────────────────────────
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xFFEEEEEE),
        selectedColor: _greenLight,
        labelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        side: const BorderSide(color: _borderLight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      // ── SnackBar ──────────────────────────────────────────────────────────
      snackBarTheme: SnackBarThemeData(
        backgroundColor: deepAsphalt,
        contentTextStyle: GoogleFonts.inter(color: pureWhite, fontSize: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
      // ── Bottom Navigation ─────────────────────────────────────────────────
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _cardLight,
        selectedItemColor: _greenLight,
        unselectedItemColor: const Color(0xFF9E9E9E),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: _greenLight,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF9E9E9E),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _cardLight,
        indicatorColor: const Color(0x3300B52C), // _greenLight @ 20%
        surfaceTintColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: _greenLight,
            );
          }
          return GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF9E9E9E),
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: _greenLight);
          }
          return const IconThemeData(color: Color(0xFF9E9E9E));
        }),
      ),
      // ── ListTile ──────────────────────────────────────────────────────────
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        selectedTileColor: const Color(0x1A00B52C), // _greenLight @ 10%
        selectedColor: _greenLight,
        textColor: deepAsphalt,
        iconColor: const Color(0xFF5A5A5A),
        subtitleTextStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF5A5A5A),
        ),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: deepAsphalt,
        ),
      ),
      // ── Icons ─────────────────────────────────────────────────────────────
      iconTheme: const IconThemeData(color: Color(0xFF5A5A5A)),
      primaryIconTheme: const IconThemeData(color: _greenLight),
      // ── Progress Indicator ────────────────────────────────────────────────
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: _greenLight,
        linearTrackColor: _borderLight,
        circularTrackColor: _borderLight,
      ),
      // ── Switch ────────────────────────────────────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? _greenLight
              : const Color(0xFF9E9E9E),
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? const Color(0x4D00B52C) // _greenLight @ 30%
              : _borderLight,
        ),
      ),
      // ── Slider ────────────────────────────────────────────────────────────
      sliderTheme: const SliderThemeData(
        activeTrackColor: _greenLight,
        inactiveTrackColor: _borderLight,
        thumbColor: _greenLight,
        overlayColor: Color(0x2900B52C),
      ),
      // ── TabBar ────────────────────────────────────────────────────────────
      tabBarTheme: TabBarThemeData(
        labelColor: _greenLight,
        unselectedLabelColor: Color(0xFF9E9E9E),
        indicatorColor: _greenLight,
        labelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        dividerColor: _borderLight,
      ),
      // ── Dialog ────────────────────────────────────────────────────────────
      dialogTheme: DialogThemeData(
        backgroundColor: _cardLight,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: deepAsphalt,
        ),
        contentTextStyle: GoogleFonts.inter(fontSize: 14, color: deepAsphalt),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      // ── Bottom Sheet ──────────────────────────────────────────────────────
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: _surfaceLight,
        surfaceTintColor: Colors.transparent,
        dragHandleColor: Color(0xFFBDBDBD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),
    );
  }
}
