.class final Lcom/sun/mail/imap/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic a:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic b:C

.field private final synthetic c:Lcom/sun/mail/imap/ACL;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/l;->a:Lcom/sun/mail/imap/IMAPFolder;

    iput-char p2, p0, Lcom/sun/mail/imap/l;->b:C

    iput-object p3, p0, Lcom/sun/mail/imap/l;->c:Lcom/sun/mail/imap/ACL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/mail/imap/l;->a:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-char v1, p0, Lcom/sun/mail/imap/l;->b:C

    iget-object v2, p0, Lcom/sun/mail/imap/l;->c:Lcom/sun/mail/imap/ACL;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V

    const/4 v0, 0x0

    return-object v0
.end method
