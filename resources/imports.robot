*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Library    RequestsLibrary
Variables    ${CURDIR}/testdata/testdata.yaml
Variables    ${CURDIR}/config/api/url.yaml
Variables    ${CURDIR}/config/web/url.yaml
Resource    ${CURDIR}/../keywords/common.robot
Resource    ${CURDIR}/../keywords/api/user.robot
Resource    ${CURDIR}/../keywords/web/home.robot
Resource    ${CURDIR}/../keywords/web/cartoon_page.robot
Resource    ${CURDIR}/../keywords/web/cart.robot
Resource    ${CURDIR}/../resources/locator/cartoon_page.robot
Resource    ${CURDIR}/../resources/locator/home.robot
Resource    ${CURDIR}/../resources/locator/cart.robot
