.class public Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
.super Ljava/lang/Object;
.source "TiScriptRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/TiScriptRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TiScript"
.end annotation


# instance fields
.field public context:Lorg/mozilla/javascript/Context;

.field public name:Ljava/lang/String;

.field public returnValue:Ljava/lang/Object;

.field public scope:Lorg/mozilla/javascript/Scriptable;

.field public script:Lorg/mozilla/javascript/Script;

.field final synthetic this$0:Lorg/appcelerator/titanium/TiScriptRunner;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/TiScriptRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->this$0:Lorg/appcelerator/titanium/TiScriptRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
