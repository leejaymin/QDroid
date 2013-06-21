.class final Lcom/sun/mail/imap/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic a:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic b:Ljavax/mail/Quota;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/g;->a:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/g;->b:Ljavax/mail/Quota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/imap/g;->b:Ljavax/mail/Quota;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V

    const/4 v0, 0x0

    return-object v0
.end method
