use std::process::Command;
use std::error::Error;

fn main() -> Result<(), Box<dyn Error>> {
    let vol = Command::new("pamixer").arg("--get-volume-human").output()?;
    let out = String::from_utf8_lossy(&vol.stdout);

    if out == String::from("muted\n") {
        let vol = Command::new("pamixer").arg("--get-volume").output()?;
        println!("<span size=\"x-large\"></span> {}%", String::from_utf8_lossy(&vol.stdout).trim());
    } else {
        println!("<span size=\"large\">墳</span> {}", out);
    }

    Ok(())
}

