.class Lcom/android/settingsstock/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/TrustedCredentialsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$2;->this$0:Lcom/android/settingsstock/TrustedCredentialsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method