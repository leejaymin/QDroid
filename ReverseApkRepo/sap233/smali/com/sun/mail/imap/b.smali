.class final Lcom/sun/mail/imap/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic a:Lcom/sun/mail/imap/DefaultFolder;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/b;->a:Lcom/sun/mail/imap/DefaultFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method