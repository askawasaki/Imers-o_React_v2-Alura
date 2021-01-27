[33mcommit 5b86bc8716353bd08cb74070017ae4a196efe919[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: Andre Seiji Lima <52793849+askawasaki@users.noreply.github.com>
Date:   Wed Jan 27 01:02:16 2021 -0300

    codigo final da primeira aula

[1mdiff --git a/.babelrc b/.babelrc[m
[1mnew file mode 100644[m
[1mindex 0000000..854cb73[m
[1m--- /dev/null[m
[1m+++ b/.babelrc[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "presets": ["next/babel"],[m
[32m+[m[32m  "plugins": [["styled-components", { "ssr": true }]][m
[32m+[m[32m}[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..1437c53[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32m# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.[m
[32m+[m
[32m+[m[32m# dependencies[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/.pnp[m
[32m+[m[32m.pnp.js[m
[32m+[m
[32m+[m[32m# testing[m
[32m+[m[32m/coverage[m
[32m+[m
[32m+[m[32m# next.js[m
[32m+[m[32m/.next/[m
[32m+[m[32m/out/[m
[32m+[m
[32m+[m[32m# production[m
[32m+[m[32m/build[m
[32m+[m
[32m+[m[32m# misc[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m*.pem[m
[32m+[m
[32m+[m[32m# debug[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[32m+[m
[32m+[m[32m# local env files[m
[32m+[m[32m.env.local[m
[32m+[m[32m.env.development.local[m
[32m+[m[32m.env.test.local[m
[32m+[m[32m.env.production.local[m
[32m+[m
[32m+[m[32m# vercel[m
[32m+[m[32m.vercel[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..7c585b9[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,78 @@[m
[32m+[m[32m# Example app with styled-components[m
[32m+[m
[32m+[m[32mThis example features how you use a different styling solution than [styled-jsx](https://github.com/zeit/styled-jsx) that also supports universal styles. That means we can serve the required styles for the first render within the HTML and then load the rest in the client. In this case we are using [styled-components](https://github.com/styled-components/styled-components).[m
[32m+[m
[32m+[m[32mFor this purpose we are extending the `<Document />` and injecting the server side rendered styles into the `<head>`, and also adding the `babel-plugin-styled-components` (which is required for server side rendering). Additionally we set up a global [theme](https://www.styled-components.com/docs/advanced#theming) for styled-components using NextJS custom [`<App>`](https://nextjs.org/docs/advanced-features/custom-app) component.[m
[32m+[m
[32m+[m[32m## Deploy your own[m
[32m+[m
[32m+[m[32mDeploy the example using [Vercel](https://vercel.com?utm_source=github&utm_medium=readme&utm_campaign=next-example):[m
[32m+[m
[32m+[m[32m[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/git/external?repository-url=https://github.com/vercel/next.js/tree/canary/examples/with-styled-components&project-name=with-styled-components&repository-name=with-styled-components)[m
[32m+[m
[32m+[m[32m## How to use[m
[32m+[m
[32m+[m[32mExecute [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app) with [npm](https://docs.npmjs.com/cli/init) or [Yarn](https://yarnpkg.com/lang/en/docs/cli/create/) to bootstrap the example:[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mnpx create-next-app --example with-styled-components with-styled-components-app[m
[32m+[m[32m# or[m
[32m+[m[32myarn create next-app --example with-styled-components with-styled-components-app[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mDeploy it to the cloud with [Vercel](https://vercel.com/new?utm_source=github&utm_medium=readme&utm_campaign=next-example) ([Documentation](https://nextjs.org/docs/deployment)).[m
[32m+[m
[32m+[m[32m### Try it on CodeSandbox[m
[32m+[m
[32m+[m[32m[Open this example on CodeSandbox](https://codesandbox.io/s/github/vercel/next.js/tree/canary/examples/with-styled-components)[m
[32m+[m
[32m+[m[32m### Notes[m
[32m+[m
[32m+[m[32mWhen wrapping a [Link](https://nextjs.org/docs/api-reference/next/link) from `next/link` within a styled-component, the [as](https://styled-components.com/docs/api#as-polymorphic-prop) prop provided by `styled` will collide with the Link's `as` prop and cause styled-components to throw an `Invalid tag` error. To avoid this, you can either use the recommended [forwardedAs](https://styled-components.com/docs/api#forwardedas-prop) prop from styled-components or use a different named prop to pass to a `styled` Link.[m
[32m+[m
[32m+[m[32m<details>[m
[32m+[m[32m<summary>Click to expand workaround example</summary>[m
[32m+[m[32m<br />[m
[32m+[m
[32m+[m[32m**components/StyledLink.js**[m
[32m+[m
[32m+[m[32m```javascript[m
[32m+[m[32mimport Link from 'next/link'[m
[32m+[m[32mimport styled from 'styled-components'[m
[32m+[m
[32m+[m[32mconst StyledLink = ({ as, children, className, href }) => ([m
[32m+[m[32m  <Link href={href} as={as} passHref>[m
[32m+[m[32m    <a className={className}>{children}</a>[m
[32m+[m[32m  </Link>[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32mexport default styled(StyledLink)`[m
[32m+[m[32m  color: #0075e0;[m
[32m+[m[32m  text-decoration: none;[m
[32m+[m[32m  transition: all 0.2s ease-in-out;[m
[32m+[m
[32m+[m[32m  &:hover {[m
[32m+[m[32m    color: #40a9ff;[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  &:focus {[m
[32m+[m[32m    color: #40a9ff;[m
[32m+[m[32m    outline: none;[m
[32m+[m[32m    border: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m`[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m**pages/index.js**[m
[32m+[m
[32m+[m[32m```javascript[m
[32m+[m[32mimport StyledLink from '../components/StyledLink'[m
[32m+[m
[32m+[m[32mexport default () => ([m
[32m+[m[32m  <StyledLink href="/post/[pid]" forwardedAs="/post/abc">[m
[32m+[m[32m    First post[m
[32m+[m[32m  </StyledLink>[m
[32m+[m[32m)[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m</details>[m
[1mdiff --git a/db.json b/db.json[m
[1mnew file mode 100644[m
[1mindex 0000000..23ea615[m
[1m--- /dev/null[m
[1m+++ b/db.json[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "bg": "https://i2.wp.com/css-tricks.com/wp-content/uploads/2017/06/css-is-awesome-scaled.jpg?resize=1536%2C1208&ssl=1",[m
[32m+[m[32m    "title": "Quiz CSS da Alura",[m
[32m+[m[32m    "description": "Teste os seus conhecimentos sobre CSS e vamos ver quantos layouts você vai deixar de quebrar",[m
[32m+[m[32m    "questions": [[m
[32m+[m[32m      {[m
[32m+[m[32m        "image": "https://media.giphy.com/media/xUOxf3yDKCuwpOlT3i/giphy.gif",[m
[32m+[m[32m        "title": "Como fazer um seletor por id via CSS?",[m
[32m+[m[32m        "description": "Essa é pra aquecer",[m
[32m+[m[32m        "answer": 2,[m
[32m+[m[32m        "alternatives": [[m
[32m+[m[32m          ".elemento",[m
[32m+[m[32m          "*elemento",[m
[32m+[m[32m          "#elemento",[m
[32m+[m[32m          "%elemento"[m
[32m+[m[32m        ][m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        "image": "https://media.giphy.com/media/13FrpeVH09Zrb2/giphy.gif",[m
[32m+[m[32m        "title": "Como fazer um background gradiente com css?",[m
[32m+[m[32m        "description": "Faz tempo em haha",[m
[32m+[m[32m        "answer": 0,[m
[32m+[m[32m        "alternatives": [[m
[32m+[m[32m           "background: linear-gradient(#e66465, #9198e5);",[m
[32m+[m[32m           "background: gradient(#e66465, #9198e5);"[m
[32m+[m[32m        ][m
[32m+[m[32m      }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "external": [[m
[32m+[m[32m      ""[m
[32m+[m[32m    ],[m
[32m+[m
[32m+[m[32m    "theme": {[m
[32m+[m[32m        "colors": {[m
[32m+[m[32m          "primary": "#4caf50",[m
[32m+[m[32m          "secondary": "#ff9800",[m
[32m+[m[32m          "mainBg": "#1C1814",[m
[32m+[m[32m          "contrastText": "#FFFFFF",[m
[32m+[m[32m          "wrong": "#FF5722",[m
[32m+[m[32m          "success": "#4CAF50"[m
[32m+[m[32m        },[m
[32m+[m[32m        "borderRadius": "4px"[m
[32m+[m[32m      }[m
[32m+[m[32m  }[m
\ No newline at end of file[m
[1mdiff --git a/package.json b/package.json[m
[1mnew file mode 100644[m
[1mindex 0000000..d76b25b[m
[1m--- /dev/null[m
[1m+++ b/package.json[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "with-styled-components",[m
[32m+[m[32m  "version": "1.0.0",[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m    "dev": "next",[m
[32m+[m[32m    "build": "next build",[m
[32m+[m[32m    "start": "next start"[m
[32m+[m[32m  },[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    "next": "latest",[m
[32m+[m[32m    "react": "^16.8.0",[m
[32m+[m[32m    "react-dom": "^16.8.0",[m
[32m+[m[32m    "react-is": "^16.8.0",[m
[32m+[m[32m    "styled-components": "^5.0.0"[m
[32m+[m[32m  },[m
[32m+[m[32m  "devDependencies": {[m
[32m+[m[32m    "babel-plugin-styled-components": "^1.8.0"[m
[32m+[m[32m  },[m
[32m+[m[32m  "license": "MIT"[m
[32m+[m[32m}[m
[1mdiff --git a/pages/_app.js b/pages/_app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..d13c4e2[m
[1m--- /dev/null[m
[1m+++ b/pages/_app.js[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32mimport { createGlobalStyle, ThemeProvider } from 'styled-components'[m
[32m+[m[32mimport db from '../db.json';[m
[32m+[m
[32m+[m[32mconst GlobalStyle = createGlobalStyle`[m
[32m+[m[32m  body {[m
[32m+[m[32m    margin: 0;[m
[32m+[m[32m    padding: 0;[m
[32m+[m[32m    box-sizing: border-box;[m
[32m+[m[32m    /* New styles */[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    flex-direction: column;[m
[32m+[m[32m    font-family: 'Lato', sans-serif;[m
[32m+[m[32m    // Deixa branco no começo[m
[32m+[m[32m    color: ${({ theme }) => theme.colors.contrastText};[m
[32m+[m[32m  }[m
[32m+[m[32m  html, body {[m
[32m+[m[32m    min-height: 100vh;[m
[32m+[m[32m  }[m
[32m+[m[32m  #__next {[m
[32m+[m[32m    flex: 1;[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    flex-direction: column;[m
[32m+[m[32m  }[m
[32m+[m[32m`[m
[32m+[m
[32m+[m[32m// const theme = {[m
[32m+[m[32m//   colors: {[m
[32m+[m[32m//     primary: '#0070f3',[m
[32m+[m[32m//   },[m
[32m+[m[32m// }[m
[32m+[m
[32m+[m[32mconst theme = db.theme;[m
[32m+[m
[32m+[m[32mexport default function App({ Component, pageProps }) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <>[m
[32m+[m[41m      [m
[32m+[m[32m      <ThemeProvider theme={theme}>[m
[32m+[m[32m        <GlobalStyle />[m
[32m+[m[32m        <Component {...pageProps} />[m
[32m+[m[32m      </ThemeProvider>[m
[32m+[m[32m    </>[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[1mdiff --git a/pages/_document.js b/pages/_document.js[m
[1mnew file mode 100644[m
[1mindex 0000000..2a59afe[m
[1m--- /dev/null[m
[1m+++ b/pages/_document.js[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32mimport Document from 'next/document'[m
[32m+[m[32mimport { ServerStyleSheet } from 'styled-components'[m
[32m+[m
[32m+[m[32mexport default class MyDocument extends Document {[m
[32m+[m[32m  static async getInitialProps(ctx) {[m
[32m+[m[32m    const sheet = new ServerStyleSheet()[m
[32m+[m[32m    const originalRenderPage = ctx.renderPage[m
[32m+[m
[32m+[m[32m    try {[m
[32m+[m[32m      ctx.renderPage = () =>[m
[32m+[m[32m        originalRenderPage({[m
[32m+[m[32m          enhanceApp: (App) => (props) =>[m
[32m+[m[32m            sheet.collectStyles(<App {...props} />),[m
[32m+[m[32m        })[m
[32m+[m
[32m+[m[32m      const initialProps = await Document.getInitialProps(ctx)[m
[32m+[m[32m      return {[m
[32m+[m[32m        ...initialProps,[m
[32m+[m[32m        styles: ([m
[32m+[m[32m          <>[m
[32m+[m[32m            {initialProps.styles}[m
[32m+[m[32m            {sheet.getStyleElement()}[m
[32m+[m[32m          </>[m
[32m+[m[32m        ),[m
[32m+[m[32m      }[m
[32m+[m[32m    } finally {[m
[32m+[m[32m      sheet.seal()[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/pages/index.js b/pages/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..4aa04d3[m
[1m--- /dev/null[m
[1m+++ b/pages/index.js[m
[36m@@ -0,0 +1,57 @@[m
[32m+[m[32mimport styled from 'styled-components'[m
[32m+[m[32mimport db from '../db.json'[m
[32m+[m[32mimport Widget from  '../src/components/Widget'[m
[32m+[m[32m// não precisa colocar o index.js pois o proprio js já faz a referência[m
[32m+[m[32mimport Footer from '../src/components/Footer'[m
[32m+[m[32mimport GitHubCorner from '../src/components/GitHubCorner'[m
[32m+[m[32mimport QuizBackground from '../src/components/QuizBackground'[m
[32m+[m
[32m+[m[32m// styled.NomeDaTag``; é uma tag function[m
[32m+[m
[32m+[m[32mconst Title = styled.h1`[m
[32m+[m[32m  font-size: 50px;[m
[32m+[m[32m  color: ${({ theme }) => theme.colors.primary};[m
[32m+[m[32m`[m
[32m+[m[32m// const BackgroundImage = styled.div`[m
[32m+[m[32m//   background-image: url(${db.bg});[m
[32m+[m[32m//   flex: 1;[m
[32m+[m[32m//   background-size: cover;[m
[32m+[m[32m//   background-position: center;[m
[32m+[m[32m// `;[m
[32m+[m
[32m+[m[32mexport const QuizContainer = styled.div`[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  max-width: 350px;[m
[32m+[m[32m  padding-top: 45px;[m
[32m+[m[32m  margin: auto 10%;[m
[32m+[m[32m  @media screen and (max-width: 500px){[m
[32m+[m[32m    margin: auto;[m
[32m+[m[32m    padding: 15px;[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mexport default function Home() {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <QuizBackground backgroundImage = {db.bg}>[m
[32m+[m[32m      <QuizContainer>[m
[32m+[m[32m        <Widget>[m
[32m+[m[32m          <Widget.Header>[m
[32m+[m[32m            <h1>The Legend of Zelda</h1>[m
[32m+[m[32m          </Widget.Header>[m
[32m+[m[32m          <Widget.Content>[m
[32m+[m[32m            <p>lorem ipsum dolor sit amet...</p>[m
[32m+[m[32m          </Widget.Content>[m
[32m+[m[32m        </Widget>[m
[32m+[m[32m        <Widget>[m
[32m+[m[32m          <Widget.Content>[m
[32m+[m[32m            <h1>Quizes da galera</h1>[m
[32m+[m
[32m+[m[32m            <p>lorem ipsum dolor sit amet...</p>[m
[32m+[m[32m          </Widget.Content>[m
[32m+[m[32m        </Widget>[m
[32m+[m[32m        <Footer/>[m
[32m+[m[32m      </QuizContainer>[m
[32m+[m[32m      <GitHubCorner projectUrl="https://github.com/askawasaki"/>[m
[32m+[m[32m    </QuizBackground>[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[1mdiff --git a/src/components/Footer/index.js b/src/components/Footer/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..d4b91c2[m
[1m--- /dev/null[m
[1m+++ b/src/components/Footer/index.js[m
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32mimport styled from 'styled-components'[m
[32m+[m
[32m+[m[32m// src/components/Footer/index.js[m
[32m+[m[32mconst FooterWrapper = styled.footer`[m
[32m+[m[32m  background-color: #00000070;[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  border-radius: 4px;[m[41m [m
[32m+[m[32m  img {[m
[32m+[m[32m    width: 58px;[m
[32m+[m[32m    margin-right: 23px;[m
[32m+[m[32m  }[m
[32m+[m[32m  a {[m
[32m+[m[32m    color: white;[m
[32m+[m[32m    text-decoration: none;[m
[32m+[m[32m    transition: .3s;[m
[32m+[m[32m    &:hover,[m
[32m+[m[32m    &:focus {[m
[32m+[m[32m      opacity: .5;[m
[32m+[m[32m    }[m
[32m+[m[32m    span {[m
[32m+[m[32m      text-decoration: underline;[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mexport default function Footer(props) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    // eslint-disable-next-line react/jsx-props-no-spreading[m
[32m+[m[32m    <FooterWrapper {...props}>[m
[32m+[m[32m      <a href="https://www.alura.com.br/">[m
[32m+[m[32m        <img src="https://www.alura.com.br/assets/img/alura-logo-white.1570550707.svg" alt="Logo Alura" />[m
[32m+[m[32m      </a>[m
[32m+[m[32m      <p>[m
[32m+[m[32m        Orgulhosamente criado durante[m
[32m+[m[32m        {' '}[m
[32m+[m[32m        a[m
[32m+[m[32m        {' '}[m
[32m+[m[32m        <a href="https://www.alura.com.br/">[m
[32m+[m[32m          <span>Imersão React da Alura</span>[m
[32m+[m[32m        </a>[m
[32m+[m[32m      </p>[m
[32m+[m[32m    </FooterWrapper>[m
[32m+[m[32m  );[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/components/GitHubCorner/index.js b/src/components/GitHubCorner/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..5218d05[m
[1m--- /dev/null[m
[1m+++ b/src/components/GitHubCorner/index.js[m
[36m@@ -0,0 +1,48 @@[m
[32m+[m[32m// src/components/GitHubCorner/index.js[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport styled from 'styled-components';[m
[32m+[m
[32m+[m[32mconst Wrapper = styled.div`[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  top: 0;[m
[32m+[m[32m  border: 0;[m
[32m+[m[32m  right: 0;[m
[32m+[m[32m  z-index: 20;[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mconst SVGWrapper = styled.svg`[m
[32m+[m[32m  fill: ${({ theme }) => theme.colors.secondary};[m
[32m+[m[32m  color: ${({ theme }) => theme.colors.contrastText};[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m  &:hover .octo-arm{[m
[32m+[m[32m    animation:octocat-wave 560ms ease-in-out[m
[32m+[m[32m  }[m
[32m+[m[32m  @keyframes octocat-wave{[m
[32m+[m[32m    0%,100%{transform:rotate(0)}[m
[32m+[m[32m    20%,60%{transform:rotate(-25deg)}[m
[32m+[m[32m    40%,80%{transform:rotate(10deg)}[m
[32m+[m[32m  }[m
[32m+[m[32m  @media (max-width:500px){[m
[32m+[m[32m    &:hover .octo-arm{[m
[32m+[m[32m      animation:none[m
[32m+[m[32m    }[m
[32m+[m[32m    & .octo-arm{[m
[32m+[m[32m      animation:octocat-wave 560ms ease-in-out[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32m// eslint-disable-next-line react/prop-types[m
[32m+[m[32mexport default function GitHubCorner({ projectUrl }) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <Wrapper>[m
[32m+[m[32m      <a href={projectUrl} target="_blank" rel="noreferrer">[m
[32m+[m[32m        <SVGWrapper className="githubCorner" width="80" height="80" viewBox="0 0 250 250" aria-hidden="true">[m
[32m+[m[32m          <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z" />[m
[32m+[m[32m          <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style={{ transformOrigin: '130px 106px' }} className="octo-arm" />[m
[32m+[m[32m          <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" className="octo-body" />[m
[32m+[m[32m        </SVGWrapper>[m
[32m+[m[32m      </a>[m
[32m+[m[32m    </Wrapper>[m
[32m+[m[32m  );[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/components/QuizBackground/index.js b/src/components/QuizBackground/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..49f177c[m
[1m--- /dev/null[m
[1m+++ b/src/components/QuizBackground/index.js[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m// src/components/QuizBackground/index.js[m
[32m+[m[32mimport styled from 'styled-components';[m
[32m+[m
[32m+[m[32mconst QuizBackground = styled.div`[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  background-size: cover;[m
[32m+[m[32m  background-position: center;[m
[32m+[m[32m  background-image: url(${({ backgroundImage }) => backgroundImage});[m
[32m+[m[32m  background-color: ${({ theme }) => theme.colors.mainBg};[m
[32m+[m[32m  flex: 1;[m
[32m+[m[32m  @media screen and (max-width: 500px) {[m
[32m+[m[32m    background-image: none;[m
[32m+[m[32m    &:after {[m
[32m+[m[32m      content: "";[m
[32m+[m[32m      background-size: cover;[m
[32m+[m[32m    background-position: center;[m
[32m+[m[32m      background-image:[m
[32m+[m[32m        linear-gradient(transparent, ${({ theme }) => theme.colors.mainBg}),[m
[32m+[m[32m        url(${({ backgroundImage }) => backgroundImage});[m
[32m+[m[32m      display: block;[m
[32m+[m[32m      width: 100%;[m
[32m+[m[32m      height: 210px;[m
[32m+[m[32m      position: absolute;[m
[32m+[m[32m      top: 0;[m
[32m+[m[32m      left: 0;[m
[32m+[m[32m      right: 0;[m
[32m+[m[32m      z-index: 1;[m
[32m+[m[32m    }[m
[32m+[m[32m    *:first-child {[m
[32m+[m[32m      position: relative;[m
[32m+[m[32m      z-index: 10;[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mexport default QuizBackground;[m
\ No newline at end of file[m
[1mdiff --git a/src/components/Widget/index.js b/src/components/Widget/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..10732b6[m
[1m--- /dev/null[m
[1m+++ b/src/components/Widget/index.js[m
[36m@@ -0,0 +1,49 @@[m
[32m+[m[32mimport styled from 'styled-components'[m
[32m+[m
[32m+[m[32mconst Widget = styled.div`[m
[32m+[m[32m  margin-top: 24px;[m
[32m+[m[32m  margin-bottom: 24px;[m
[32m+[m[32m  background-color: ${({ theme }) => theme.colors.mainBg};[m
[32m+[m[32m  border: 1px solid ${({ theme }) => theme.colors.primary};[m
[32m+[m[32m  box-sizing: border-box;[m
[32m+[m[32m  border-radius: 4px;[m
[32m+[m[32m  overflow: hidden;[m
[32m+[m
[32m+[m[32m  h1, h2, h3{[m
[32m+[m[32m    font-size: 16px;[m
[32m+[m[32m    font-weight: 700;[m
[32m+[m[32m    line-height: 1;[m
[32m+[m[32m    margin-bottom: 0;[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  p{[m
[32m+[m[32m    font-size: 14px;[m
[32m+[m[32m    font-weight: 400;[m
[32m+[m[32m    line-height: 1;[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mWidget.Header = styled.header`[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  justify-content: flex-start;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  padding: 18px 32px;[m
[32m+[m[32m  background-color: ${({ theme }) => theme.colors.primary};[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mWidget.Content = styled.div`[m
[32m+[m[32m  padding: 24px 32px 32px 32px;[m
[32m+[m[32m  & > *:first-child{[m
[32m+[m[32m    margin-top: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m  & > *:last-child{[m
[32m+[m[32m    margin-bottom: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m  ul {[m
[32m+[m[32m    list-style: none;[m
[32m+[m[32m    padding: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m`;[m
[32m+[m
[32m+[m[32mexport default Widget;[m
[32m+[m[32m//apenas referenciando o Widget, todos que estão ligados serão levados juntos[m
\ No newline at end of file[m
[1mdiff --git a/yarn.lock b/yarn.lock[m
[1mnew file mode 100644[m
[1mindex 0000000..44247cf[m
[1m--- /dev/null[m
[1m+++ b/yarn.lock[m
[36m@@ -0,0 +1,4187 @@[m
[32m+[m[32m# THIS IS AN AUTOGENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY.[m
[32m+[m[32m# yarn lockfile v1[m
[32m+[m
[32m+[m
[32m+[m[32m"@ampproject/toolbox-core@2.7.4", "@ampproject/t