const tabsBtn = document.getElementsByClassName("tab");

let selectedTab = document.querySelector(".tabs-list .active");

for (let i = 0; i < tabsBtn.length; i++) {
	const tab = tabsBtn[i];

	tab.addEventListener("click", (e) => {
		selectedTab.classList.remove("active");
		document.getElementById(selectedTab.getAttribute("data-tab-name")).classList.remove("active");

		tab.classList.add("active");
		document.getElementById(tab.getAttribute("data-tab-name")).classList.add("active");

		selectedTab = tab;
	});
}
