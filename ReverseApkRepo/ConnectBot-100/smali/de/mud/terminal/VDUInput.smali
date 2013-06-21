.class public interface abstract Lde/mud/terminal/VDUInput;
.super Ljava/lang/Object;
.source "VDUInput.java"


# static fields
.field public static final KEY_ACTION:I = 0x8

.field public static final KEY_ALT:I = 0x4

.field public static final KEY_CONTROL:I = 0x1

.field public static final KEY_SHIFT:I = 0x2


# virtual methods
.method public abstract keyPressed(ICI)V
.end method

.method public abstract keyTyped(ICI)V
.end method

.method public abstract mousePressed(III)V
.end method

.method public abstract mouseReleased(III)V
.end method

.method public abstract setKeyCodes(Ljava/util/Properties;)V
.end method

.method public abstract write([B)V
.end method
