.class final Lcom/sun/mail/imap/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic a:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/m;->a:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/imap/m;->a:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->b(Lcom/sun/mail/imap/IMAPFolder;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    iget-object v0, p0, Lcom/sun/mail/imap/m;->a:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->c(Lcom/sun/mail/imap/IMAPFolder;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/m;->a:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
