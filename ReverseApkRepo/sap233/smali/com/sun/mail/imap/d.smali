.class final Lcom/sun/mail/imap/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic a:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic b:Ljavax/mail/Flags;

.field private final synthetic c:Ljava/util/Date;

.field private final synthetic d:Lcom/sun/mail/imap/y;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/y;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/d;->a:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/d;->b:Ljavax/mail/Flags;

    iput-object p3, p0, Lcom/sun/mail/imap/d;->c:Ljava/util/Date;

    iput-object p4, p0, Lcom/sun/mail/imap/d;->d:Lcom/sun/mail/imap/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sun/mail/imap/d;->a:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/d;->b:Ljavax/mail/Flags;

    iget-object v2, p0, Lcom/sun/mail/imap/d;->c:Ljava/util/Date;

    iget-object v3, p0, Lcom/sun/mail/imap/d;->d:Lcom/sun/mail/imap/y;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V

    const/4 v0, 0x0

    return-object v0
.end method
