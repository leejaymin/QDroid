.class Lorg/appcelerator/kroll/KrollConverter$ScriptableMap$1;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap$1;->this$1:Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "invocation"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap$1;->this$1:Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
