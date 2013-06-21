.class public abstract Lb/a/a/a/a/a/n;
.super Lb/a/a/a/a/j;


# instance fields
.field protected a:Ljava/util/regex/Matcher;

.field private b:Ljava/util/regex/Pattern;

.field private c:Ljava/util/regex/MatchResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lb/a/a/a/a/j;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a/n;->b:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    iput-object v0, p0, Lb/a/a/a/a/a/n;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/n;->d(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    iget-object v0, p0, Lb/a/a/a/a/a/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/n;->a:Ljava/util/regex/Matcher;

    iget-object v0, p0, Lb/a/a/a/a/a/n;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/a/n;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/a/n;->c:Ljava/util/regex/MatchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/n;->b:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lb/a/a/a/a/a/n;->b:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unparseable regex supplied: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
