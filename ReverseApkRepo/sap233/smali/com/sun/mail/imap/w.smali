.class final Lcom/sun/mail/imap/w;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Vector;

.field b:Ljava/util/Vector;

.field c:Z

.field d:Z

.field e:J

.field f:J

.field g:J

.field h:I

.field i:J

.field j:Z

.field k:I

.field l:Lcom/sun/mail/imap/protocol/IMAPProtocol;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/w;->a:Ljava/util/Vector;

    iput-boolean v2, p0, Lcom/sun/mail/imap/w;->c:Z

    iput-boolean v2, p0, Lcom/sun/mail/imap/w;->d:Z

    const-wide/32 v0, 0xafc8

    iput-wide v0, p0, Lcom/sun/mail/imap/w;->e:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/sun/mail/imap/w;->f:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/w;->h:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sun/mail/imap/w;->i:J

    iput-boolean v2, p0, Lcom/sun/mail/imap/w;->j:Z

    iput v2, p0, Lcom/sun/mail/imap/w;->k:I

    return-void
.end method
