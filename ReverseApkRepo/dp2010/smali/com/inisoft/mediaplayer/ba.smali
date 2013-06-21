.class final Lcom/inisoft/mediaplayer/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ba;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ba;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ba;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ba;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V

    return-void
.end method
