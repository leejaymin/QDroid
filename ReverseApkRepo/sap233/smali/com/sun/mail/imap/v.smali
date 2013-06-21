.class final Lcom/sun/mail/imap/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/Utility$Condition;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/FetchProfile;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->a:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->b:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->c:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->d:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->e:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/v;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/v;->g:[Ljava/lang/String;

    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->a:Z

    :cond_0
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->b:Z

    :cond_1
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->c:Z

    :cond_2
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->d:Z

    :cond_3
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->e:Z

    :cond_4
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/sun/mail/imap/v;->f:Z

    :cond_5
    invoke-virtual {p1}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/v;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->a(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->b:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->b(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;

    move-result-object v0

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->c:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->c(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->e:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->d(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/sun/mail/imap/v;->f:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->e(Lcom/sun/mail/imap/IMAPMessage;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/v;->g:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/v;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/sun/mail/imap/IMAPMessage;->a(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
