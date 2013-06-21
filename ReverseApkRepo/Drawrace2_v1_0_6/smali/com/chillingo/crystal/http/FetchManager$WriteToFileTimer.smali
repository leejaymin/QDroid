.class final Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/http/FetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteToFileTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/http/FetchManager;


# direct methods
.method private constructor <init>(Lcom/chillingo/crystal/http/FetchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;->this$0:Lcom/chillingo/crystal/http/FetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chillingo/crystal/http/FetchManager;Lcom/chillingo/crystal/http/FetchManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;-><init>(Lcom/chillingo/crystal/http/FetchManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;->this$0:Lcom/chillingo/crystal/http/FetchManager;

    #calls: Lcom/chillingo/crystal/http/FetchManager;->doWriteToFile()V
    invoke-static {v0}, Lcom/chillingo/crystal/http/FetchManager;->access$000(Lcom/chillingo/crystal/http/FetchManager;)V

    return-void
.end method
