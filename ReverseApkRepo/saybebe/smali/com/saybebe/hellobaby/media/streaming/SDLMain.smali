.class Lcom/saybebe/hellobaby/media/streaming/SDLMain;
.super Ljava/lang/Object;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private movieUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/SDLMain;->movieUrl:Ljava/lang/String;

    .line 894
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLMain;->movieUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeInit(Ljava/lang/String;)V

    .line 901
    return-void
.end method
