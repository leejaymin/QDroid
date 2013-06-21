.class final Ljavax/mail/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/mail/b;

.field b:Ljavax/mail/b;

.field c:Ljavax/mail/event/MailEvent;

.field d:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/b;->a:Ljavax/mail/b;

    iput-object v0, p0, Ljavax/mail/b;->b:Ljavax/mail/b;

    iput-object v0, p0, Ljavax/mail/b;->c:Ljavax/mail/event/MailEvent;

    iput-object v0, p0, Ljavax/mail/b;->d:Ljava/util/Vector;

    iput-object p1, p0, Ljavax/mail/b;->c:Ljavax/mail/event/MailEvent;

    iput-object p2, p0, Ljavax/mail/b;->d:Ljava/util/Vector;

    return-void
.end method
