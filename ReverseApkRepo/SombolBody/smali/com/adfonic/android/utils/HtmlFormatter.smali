.class public Lcom/adfonic/android/utils/HtmlFormatter;
.super Ljava/lang/Object;
.source "HtmlFormatter.java"


# static fields
.field private static final HTML_FORMATTING_PREFIX:Ljava/lang/String; = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"  \"http://www.w3.org/TR/html4/loose.dtd\" ><html lang=\"en\" style=\"width:100%; height:100%;\"><head><title>Adfonic</title><meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\"></head><body style=\"margin:0; padding:0; width:100%; height:100%;\"><table style=\"width:100%; height:100%; \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tr><td style=\"vertical-align:middle;\"><center>"

.field private static final HTML_FORMATTING_SUFFIX:Ljava/lang/String; = "</center></td></tr></table></body></html>"

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final UTF_8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyHtmlFormatting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "adContent"

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"  \"http://www.w3.org/TR/html4/loose.dtd\" ><html lang=\"en\" style=\"width:100%; height:100%;\"><head><title>Adfonic</title><meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\"></head><body style=\"margin:0; padding:0; width:100%; height:100%;\"><table style=\"width:100%; height:100%; \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tr><td style=\"vertical-align:middle;\"><center>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</center></td></tr></table></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
