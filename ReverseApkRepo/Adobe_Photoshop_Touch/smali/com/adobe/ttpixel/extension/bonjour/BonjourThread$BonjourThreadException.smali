.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BonjourThreadException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x534f1786dfb7bbd0L


# instance fields
.field private _exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field final synthetic this$0:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;


# direct methods
.method public constructor <init>(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->this$0:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;Ljava/lang/String;Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->this$0:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    return-void
.end method


# virtual methods
.method public getExitCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    return-object v0
.end method
