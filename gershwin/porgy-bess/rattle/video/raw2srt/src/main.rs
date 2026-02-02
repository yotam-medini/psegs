use std::fmt::Write;
use regex;

fn mm_ss_to_h_mm_ss(mm: &str, ss: &str) -> String {
    let u_mm = mm.parse::<u16>().unwrap();
    let u_ss = ss.parse::<u16>().unwrap();
    let seconds = 60*u_mm + u_ss;
    let minutes = seconds / 60;
    let hours = minutes / 60;
    let mut s: String = String::new();
    write!(&mut s, "{}:{:02}:{:02}", hours, minutes % 60, seconds % 60).unwrap();
    s
}

fn main() {
    let re = regex::Regex::new(
        r" *(?<from_mm>\d+):(?<from_ss>\d+) - (?<to_mm>\d+):(?<to_ss>\d+).*")
	.unwrap();

    let mut sub_title_count = 0;
    let mut done = false;
    let mut line: String = String::new();
    while ! done {
        line.clear();
        let _ = std::io::stdin().read_line(&mut line);
        let trim = line.trim();
        let empty = trim.is_empty();
        if let Some(caps) = re.captures(&line) {
            sub_title_count += 1;
            println!("\n{}", sub_title_count);
            println!("{} --> {}", 
                mm_ss_to_h_mm_ss(&caps["from_mm"], &caps["from_ss"]),
                mm_ss_to_h_mm_ss(&caps["to_mm"], &caps["to_ss"])
            );
        } else if !empty && (sub_title_count > 0) {
            println!("{}", trim);
        }
        done = (line.len() == 0) || (empty && (sub_title_count > 0));
    }
}
