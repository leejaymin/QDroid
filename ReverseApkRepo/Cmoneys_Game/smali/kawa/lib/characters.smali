.class public Lkawa/lib/characters;
.super Lgnu/expr/ModuleBody;
.source "characters.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $instance:Lkawa/lib/characters;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final char$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mn$Grinteger:Lgnu/expr/ModuleMethod;

.field public static final char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mndowncase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupcase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Qu:Lgnu/expr/ModuleMethod;

.field public static final integer$Mn$Grchar:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x2002

    const/16 v4, 0x1001

    const-string v0, "char-ci>=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit19:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-ci<=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-ci>?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit17:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-ci<?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit16:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-ci=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit15:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char>=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit14:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char<=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit13:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char>?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char<?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit11:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char=?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-downcase"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-upcase"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v0, "integer->char"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char->integer"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-lower-case?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-upper-case?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit4:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-whitespace?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-numeric?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit2:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char-alphabetic?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-string v0, "char?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/characters;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/characters;

    invoke-direct {v0}, Lkawa/lib/characters;-><init>()V

    sput-object v0, Lkawa/lib/characters;->$instance:Lkawa/lib/characters;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/characters;->$instance:Lkawa/lib/characters;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/characters;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/characters;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/characters;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/characters;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/characters;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/characters;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/characters;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mn$Grinteger:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/characters;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->integer$Mn$Grchar:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/characters;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnupcase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/characters;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mndowncase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/characters;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/characters;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/characters;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/characters;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/characters;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/characters;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lkawa/lib/characters;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/characters;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lkawa/lib/characters;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/characters;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/characters;->char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/characters;->$instance:Lkawa/lib/characters;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static char$To$Integer(Lgnu/text/Char;)I
    .locals 1
    .parameter "char"

    .prologue
    .line 21
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    return v0
.end method

.method public static charDowncase(C)C
    .locals 1
    .parameter "char"

    .prologue
    .line 30
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method public static charUpcase(C)C
    .locals 1
    .parameter "char"

    .prologue
    .line 27
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method

.method public static integer$To$Char(I)Lgnu/text/Char;
    .locals 1
    .parameter "n"

    .prologue
    .line 24
    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public static isChar(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 3
    instance-of v0, p0, Lgnu/text/Char;

    return v0
.end method

.method public static isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChar$Gr(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 37
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isChar$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 41
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isChar$Ls(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 35
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isChar$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 39
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isCharAlphabetic(C)Z
    .locals 1
    .parameter "char"

    .prologue
    .line 6
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method public static isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 47
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 53
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 59
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 50
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 56
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharLowerCase(C)Z
    .locals 1
    .parameter "char"

    .prologue
    .line 18
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    return v0
.end method

.method public static isCharNumeric(C)Z
    .locals 1
    .parameter "char"

    .prologue
    .line 9
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public static isCharUpperCase(C)Z
    .locals 1
    .parameter "char"

    .prologue
    .line 15
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public static isCharWhitespace(C)Z
    .locals 1
    .parameter "char"

    .prologue
    .line 12
    invoke-static {p0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 30
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 3
    :pswitch_0
    invoke-static {p2}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :pswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->isCharAlphabetic(C)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_2
    :try_start_1
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->isCharNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 12
    :pswitch_3
    :try_start_2
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->isCharWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 15
    :pswitch_4
    :try_start_3
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->isCharUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :pswitch_5
    :try_start_4
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->isCharLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 21
    :pswitch_6
    :try_start_5
    check-cast p2, Lgnu/text/Char;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/characters;->char$To$Integer(Lgnu/text/Char;)I

    move-result v1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    .line 24
    :pswitch_7
    :try_start_6
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->integer$To$Char(I)Lgnu/text/Char;

    move-result-object v1

    goto/16 :goto_0

    .line 27
    :pswitch_8
    :try_start_7
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->charUpcase(C)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    goto/16 :goto_0

    .line 30
    :pswitch_9
    :try_start_8
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v1

    invoke-static {v1}, Lkawa/lib/characters;->charDowncase(C)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    goto/16 :goto_0

    .line 6
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-alphabetic?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 9
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-numeric?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 12
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-whitespace?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 15
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-upper-case?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 18
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-lower-case?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 21
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char->integer"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 24
    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "integer->char"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 27
    :catch_7
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-upcase"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 30
    :catch_8
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-downcase"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v7, "char-ci=?"

    const-string v6, "char-ci<?"

    const-string v5, "char-ci<=?"

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    :try_start_0
    check-cast p2, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/text/Char;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 35
    :pswitch_1
    :try_start_2
    check-cast p2, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    check-cast p3, Lgnu/text/Char;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Ls(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    :try_start_4
    check-cast p2, Lgnu/text/Char;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    check-cast p3, Lgnu/text/Char;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Gr(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_3
    :try_start_6
    check-cast p2, Lgnu/text/Char;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    check-cast p3, Lgnu/text/Char;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_4
    :try_start_8
    check-cast p2, Lgnu/text/Char;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    check-cast p3, Lgnu/text/Char;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_5
    :try_start_a
    check-cast p2, Lgnu/text/Char;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    check-cast p3, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p2, p3}, Lkawa/lib/characters;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 50
    :pswitch_6
    :try_start_c
    check-cast p2, Lgnu/text/Char;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    :try_start_d
    check-cast p3, Lgnu/text/Char;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {p2, p3}, Lkawa/lib/characters;->isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 53
    :pswitch_7
    :try_start_e
    check-cast p2, Lgnu/text/Char;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    :try_start_f
    check-cast p3, Lgnu/text/Char;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    invoke-static {p2, p3}, Lkawa/lib/characters;->isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :pswitch_8
    :try_start_10
    check-cast p2, Lgnu/text/Char;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    :try_start_11
    check-cast p3, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_11

    invoke-static {p2, p3}, Lkawa/lib/characters;->isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 59
    :pswitch_9
    :try_start_12
    check-cast p2, Lgnu/text/Char;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_12

    :try_start_13
    check-cast p3, Lgnu/text/Char;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_13

    invoke-static {p2, p3}, Lkawa/lib/characters;->isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char=?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char=?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 35
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char<?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char<?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 37
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char>?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char>?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 39
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char<=?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char<=?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 41
    :catch_8
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char>=?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char>=?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 47
    :catch_a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci=?"

    invoke-direct {v1, v0, v7, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci=?"

    invoke-direct {v1, v0, v7, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 50
    :catch_c
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci<?"

    invoke-direct {v1, v0, v6, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci<?"

    invoke-direct {v1, v0, v6, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 53
    :catch_e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci>?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_f
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci>?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 56
    :catch_10
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci<=?"

    invoke-direct {v1, v0, v5, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci<=?"

    invoke-direct {v1, v0, v5, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 59
    :catch_12
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci>=?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_13
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci>=?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 30
    :goto_0
    return v0

    :pswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 27
    :pswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 24
    :pswitch_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 21
    :pswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 18
    :pswitch_4
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_4

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 15
    :pswitch_5
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    .line 12
    :pswitch_6
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_6

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    .line 9
    :pswitch_7
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    .line 6
    :pswitch_8
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_8

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 3
    :pswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const v2, -0xbfffe

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 59
    :goto_0
    return v0

    :pswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 56
    :pswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 53
    :pswitch_2
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 50
    :pswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 47
    :pswitch_4
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 41
    :pswitch_5
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto/16 :goto_0

    .line 39
    :pswitch_6
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto/16 :goto_0

    .line 37
    :pswitch_7
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_f
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto/16 :goto_0

    .line 35
    :pswitch_8
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_11
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto/16 :goto_0

    .line 33
    :pswitch_9
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-nez v0, :cond_13

    move v0, v2

    goto/16 :goto_0

    :cond_13
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto/16 :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 1
    .local v0, $result:Lgnu/lists/Consumer;
    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3
    return-void
.end method
