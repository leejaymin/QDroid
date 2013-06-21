.class public interface abstract Lorg/appcelerator/titanium/TiEvaluator;
.super Ljava/lang/Object;
.source "TiEvaluator.java"


# virtual methods
.method public abstract evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract evalJS(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getScope()Lorg/mozilla/javascript/Scriptable;
.end method
