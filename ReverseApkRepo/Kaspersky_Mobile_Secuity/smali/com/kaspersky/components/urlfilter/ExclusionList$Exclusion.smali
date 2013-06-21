.class public Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3a3f8533e98e7047L


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/?\\*.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mUrl:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mPattern:Ljava/util/regex/Pattern;

    .line 60
    :goto_1
    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    :try_start_2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mUrl:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mPattern:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mUrl:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mPattern:Ljava/util/regex/Pattern;

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v1, "\\?"

    const-string v3, "\\\\?"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v3, "\\."

    const-string v4, "\\\\."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v3, "/*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-string v3, "/\\*"

    const-string v4, "(/.*)*$"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    .line 105
    const-string v1, "^(\\w+://)?[^:@/]*?"

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :goto_1
    if-nez v0, :cond_1

    .line 113
    const-string v0, "(/.*)*$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 96
    :goto_2
    if-eqz v0, :cond_0

    .line 98
    const-string v3, "\\*"

    const-string v4, ".*?"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 95
    goto :goto_2

    .line 109
    :cond_4
    const-string v1, "^"

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
