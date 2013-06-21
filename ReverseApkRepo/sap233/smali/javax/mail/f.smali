.class final Ljavax/mail/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/mail/l;


# instance fields
.field final synthetic a:Ljavax/mail/Session;


# direct methods
.method constructor <init>(Ljavax/mail/Session;)V
    .locals 0

    iput-object p1, p0, Ljavax/mail/f;->a:Ljavax/mail/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Ljavax/mail/f;->a:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/Session;->a(Ljavax/mail/Session;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method
