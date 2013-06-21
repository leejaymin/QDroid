.class final Ljavax/mail/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/mail/l;


# instance fields
.field final synthetic a:Ljavax/mail/Session;


# direct methods
.method constructor <init>(Ljavax/mail/Session;)V
    .locals 0

    iput-object p1, p0, Ljavax/mail/e;->a:Ljavax/mail/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Ljavax/mail/e;->a:Ljavax/mail/Session;

    invoke-static {v0, p1}, Ljavax/mail/Session;->a(Ljavax/mail/Session;Ljava/io/InputStream;)V

    return-void
.end method
