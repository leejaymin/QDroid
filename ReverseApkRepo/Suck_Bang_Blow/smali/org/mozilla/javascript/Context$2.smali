.class Lorg/mozilla/javascript/Context$2;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Lorg/mozilla/javascript/Context$ClassShutterSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/Context;->getClassShutterSetter()Lorg/mozilla/javascript/Context$ClassShutterSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/Context;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1997
    iput-object p1, p0, Lorg/mozilla/javascript/Context$2;->this$0:Lorg/mozilla/javascript/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassShutter()Lorg/mozilla/javascript/ClassShutter;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lorg/mozilla/javascript/Context$2;->this$0:Lorg/mozilla/javascript/Context;

    #getter for: Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->access$000(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ClassShutter;

    move-result-object v0

    return-object v0
.end method

.method public setClassShutter(Lorg/mozilla/javascript/ClassShutter;)V
    .locals 1
    .parameter "shutter"

    .prologue
    .line 1999
    iget-object v0, p0, Lorg/mozilla/javascript/Context$2;->this$0:Lorg/mozilla/javascript/Context;

    #setter for: Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;
    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->access$002(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ClassShutter;)Lorg/mozilla/javascript/ClassShutter;

    .line 2000
    return-void
.end method