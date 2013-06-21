.class public final La/o;
.super Ljava/lang/Exception;

# interfaces
.implements La/s;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:La/g;

.field private e:La/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "twitter4j"

    aput-object v2, v0, v1

    sput-object v0, La/o;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, La/o;->b:I

    iput-object v1, p0, La/o;->e:La/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/o;->a:Z

    instance-of v0, p1, La/o;

    if-eqz v0, :cond_0

    check-cast p1, La/o;

    const/4 v0, 0x1

    iput-boolean v0, p1, La/o;->a:Z

    :cond_0
    iput-object v1, p0, La/o;->d:La/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/c/a/l;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, La/c/a/l;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v4, p0, La/o;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/o;->e:La/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/o;->a:Z

    invoke-virtual {p2}, La/c/a/l;->a()I

    move-result v0

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_0

    :try_start_0
    const-string v0, "Retry-After"

    invoke-virtual {p2, v0}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, La/o;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p2}, La/c/a/l;->a()I

    move-result v0

    iput v0, p0, La/o;->b:I

    invoke-static {p2}, La/i;->a(La/c/a/l;)La/g;

    move-result-object v0

    iput-object v0, p0, La/o;->d:La/g;

    invoke-static {p2}, La/i;->b(La/c/a/l;)La/g;

    move-result-object v0

    iput-object v0, p0, La/o;->e:La/g;

    return-void

    :sswitch_0
    const-string v2, "There was no new data to return."

    goto :goto_0

    :sswitch_1
    const-string v2, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    goto :goto_0

    :sswitch_2
    const-string v2, "Authentication credentials were missing or incorrect."

    goto :goto_0

    :sswitch_3
    const-string v2, "The request is understood, but it has been refused.  An accompanying error message will explain why."

    goto :goto_0

    :sswitch_4
    const-string v2, "The URI requested is invalid or the resource requested, such as a user, does not exists."

    goto :goto_0

    :sswitch_5
    const-string v2, "Returned by the Search API when an invalid format is specified in the request."

    goto :goto_0

    :sswitch_6
    const-string v2, "The number of requests you have made exceeds the quota afforded by your assigned rate limit."

    goto :goto_0

    :sswitch_7
    const-string v2, "Something is broken.  Please post to the group so the Twitter team can investigate."

    goto :goto_0

    :sswitch_8
    const-string v2, "Twitter is down or being upgraded."

    goto :goto_0

    :sswitch_9
    const-string v2, "Service Unavailable: The Twitter servers are up, but overloaded with requests. Try again later. The search and trend methods use this to indicate when you are being rate limited."

    goto :goto_0

    :catch_0
    move-exception v0

    iput v4, p0, La/o;->c:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x1a4 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x1f6 -> :sswitch_8
        0x1f7 -> :sswitch_9
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, La/o;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/o;->e:La/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/o;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, La/o;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/o;->e:La/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/o;->a:Z

    iput p3, p0, La/o;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, La/o;

    iget v0, p0, La/o;->c:I

    iget v1, p1, La/o;->c:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, La/o;->b:I

    iget v1, p1, La/o;->b:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/o;->d:La/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/o;->d:La/g;

    iget-object v1, p1, La/o;->d:La/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p1, La/o;->d:La/g;

    if-nez v0, :cond_5

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, La/o;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/o;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/o;->d:La/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/o;->d:La/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, La/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "TwitterException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/o;->a:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/o;->d:La/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", version=2.1.6}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "exceptionCode=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, La/c;

    sget-object v3, La/o;->f:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, La/c;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    iget-object v2, v2, La/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
