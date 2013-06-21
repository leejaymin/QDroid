.class final Lcom/sun/mail/pop3/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/io/InputStream;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/b;->a:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;

    return-void
.end method
