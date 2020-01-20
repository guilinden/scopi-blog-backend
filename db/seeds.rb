# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{
		name: "Guilherme Linden",
		email: "guilherme@scopi.com.br"
	},
	{
		name: "Carlos da Silva",
		email: "carlos@gmail.com.br"
	}
])

Post.create ([
	{
		title: "O que é o programa vExpert?",
		description: "	Pra quem acompanha o meu trabalho um pouco mais de perto sabe o quanto eu gosto e admiro o trabalho e os produtos da VMware. 
	E como se já não fosse o bastante ela ter uma serie de programas genias dentre o seu portfólio ela também conta com um programa de incentivo 
	para os membros envolvidos dentre a comunidade VMware, também conhecida como vCommunity,		 
		
	O programa VMware vExpert é o programa global de evangelismo da VMware. O programa foi projetado para colocar os recursos de marketing da VMware 
	em cima dos seus erforçoes na promoção de seus artigos, exposição nos eventos globais, publicidade cooperativa, análise de tráfego de conteúdo e acesso 
	antecipado a programas beta e a todo o roadmap da VMware.
	
	É válido salientar que o programa é voltado para indivíduos e membros da vCommunity e não para as empresas, ou seja, ele é um reconhecimento para VOCÊ e não para a sua empresa ou para a corporação em que você trabalha. O título de vExpert tem duração de um ano e isso faz com que o programa seja realmente vivo, já que caso você queira se manter ativo na comunidade além de se envolver diariamente, você também precisa renovar o título anualmente. Isso é feito para manter dentro do programa realmente pessoas que se envolvem e previne que espertinhos recebam o título de reconhecimento da VMware e depois virarem as costas para comunidade em si.
		
	Gosto de dizer que o vExpert é um programa de reconhecimento para consolidar a marca VMware através de pessoas realmente apaixonadas pela marca e pelos seus produtos, mas que principalmente, tenham afinco pelo compartilhamento de informação e conhecimento através da vCommunity como um todo, ou seja, é o que chamamos de evangelistas. Além disso é importante destacar que o vExpert não é uma certificação, em função disso não considero o programa como pay to win. Isso garante ainda mais que realmente apenas pessoas envolvidas com os produtos e a comunidade VMware sejam adentradas ao vExpert.
		
	Entretanto, esse tipo de programa não é exclusividade da VMware afinal de contas fabricantes como a Cisco, Microsoft e Veeam também possuem os seus programas de evangelismo como o Cisco Champion, o Microsoft MVP e o Veeam Vanguard respectivamente.
		
	Mas afinal de contas, porque eu devo me tornar um vExpert?
	Como falei anteriormente a VMware não é a única empresa que possui um programa de reconhecimento. Então porque eu devo considerar ingressar ao vExpert ao invés dos demais programas? Antes de mais nada é interessante ressaltar que o programa vExpert não fideliza os seus membros e não exige singularidade no uso de tecnologia como muitos outros fabricantes fazem sem nem ao menos ter um programa de reconhecimento. O que eu quero dizer  com isso? Quero ressaltar que no momento em que você se torna um vExpert, você não esta preso a falar apenas dos produtos e tecnologias da VMware. Como você já deve ter notado, vExperts são pessoas que amam a cultura VMware, mas que não necessariamente deve ser exclusivas na geração de conteúdo e na propagação de conhecimento. O mais importante é fomentar a comunidade VMware e não ficar preso a ela.
		
	E quais são os benefícios com isso?
		
	Estar no meio de uma comunidade que realmente é envolvida, unida e prospera junto com a VMware pra mim é um dos principais motivos de se tornar um vExpert. Afinal de contas é um fabricante de grande nome no mercado de tecnologia dando o aval que você é um bom gerador de conteúdo dentro da comunidade dela, mas é apenas isso? O que mais se ganha ao se tornar um vExpert? Vamos há alguns destaques:
		
	✔ Certificado vExpert assinado pelo CEO da VMware, o Patrick Gelsinger.
		
	✔ Fóruns particulares disponíveis em: https://communities.vmware.com/.
		
	✔ Permissão para usar o logotipos e badges vExpert em cartões, blog, site e etc. por um ano,
		
	✔ Presentes exclusivos de vários parceiros da VMware.
		
	✔ Webinars privados com parceiros da VMware.
		
	✔ Licenças de avaliação de 365 dias para a maioria dos produtos VMware para ambientes que não sejam de produção.
		
	✔ Apresentação no diretório online público do vExpert.
		
	✔ Festas anuais do vExpert nos eventos VMworld EUA e VMworld EU.
		
	✔ Identificação como um vExpert na VMworld EUA e na VMworld EU.
		
	Como me torno um vExpert
	Ok Mateus! Mas como eu me faço para me tornar um vExpert? Antes de mais nada se integre a uma comunidade VMware. Se você já esta inserido e já utiliza produtos do ambiente VMware, comece a gerar conteúdo sobre VMware. Caso você ainda tenha um blog. comece a pensar nisso agora mesmo e faça um blog o quanto antes escreva um post no Linkdein mesmo ou crie uma conta no Medium com alguns cliques e tire a poeira dos dedos.
		
	Caso você já tenha feito algumas dessas coisas, segue algumas recomendações da própria VMware:
		
	◾ Encontre um mentor. Procure por um vExpert ou um vExpert PRO na sua região.
		
	◾ Fale sobre suas atividades relacionadas a comunidade: Participações no VMUG, Meetup, blog, palestras, podcasts, etc.
		
	◾ Mostre paixão pelo que você faz.
		
	◾ Fale sobre suas atividades na comunidade
		
	◾ Conte sobre os eventos que você participou durante o ano. Deixe claro, o porque você quer ser um vExpert.
		
	Encontre mais informações sobre vExpert
	Portal vExpert – https://vexpert.vmware.com
		
	Twitter vExpert – @vExpert
	
	Blog do vExpert – https://blogs.vmware.com/vExpert
		
	Lista de vExperts  – https://vexpert.vmware.com/directory
		
	Inscrições – https://vexpert.vmware.com/apply",
	user_id: 1
	},
	{
		title: "Você conhece o VMUG?",
		description: "	No post de hoje vim falar sobre uma das comunidades que eu ainda não participo ativamente mas que eu tenho acompanhado desde que eu conheci todo o universo que tange o ambiente VMware.

	Estou falando do VMUG (VMware User Group) que nada mais é que uma comunidade de usuários dos produtos da VMware. Sim leia com atenção! O VMUG é uma COMUNIDADE. Isso quer dizer que as pessoas que se envolem com esse grupo realmente tem amor por aquilo que fazem.
		
	Vejo diversas comunidades que apenas possuem uma grande quantidade de usuários mas que de fato não agregam valor e conteúdo ao grupo. O que devemos entender antes de tudo é que uma comunidade de verdade vai muito além do que juntar pessoas que tenham um interesse em comum.
		
	Tendo em visto isso posso afirmar que o VMUG é uma comunidade engajada em envolver as soluções da VMware, mas que acima de tudo, viabiliza o compartilhamento de conhecimento. Além disso o VMUG Também fomenta colaboração do usuários do grupo para realizar eventos. Sim existem eventos de encontro entre os VMUGers em diversos países e também em alguns estados do Brasil. É o que chamamos de capítulos.	 
		
	O VMUG é uma comunidade de usuários, dos usuários pelos usuários, para os usuários.
		 
	Para escrever esse artigo eu perguntei para a comunidade qual era a experiência de participar do VMUG e para minha surpresa? Diversas pessoas me responderam e contaram como é fazer parte desse grupo.
		
	Foi ai que eu vi que o VMUG é realmente um comunidade de usuários e para os usuários.
	
	Mateus Wolff
	@penseemti
		📢 Atenção @vmugrs, estou escrevendo um post no meu blog sobre VMUG. Contem pra mim qual é a experiência de viver nessa comunidade!
		
		📢 Pay attention @MyVMUG , I am writing a post on my blog about VMUG. Tell me what is the experience of living in this community!
			
	A história do VMUG
	O VMUG teve seu início em agosto de 2010 nos Estados Unidos. Tudo começou porque grupos isolados de usuários começaram a unir forças para fomentar e desenvolver as ferramentas da VMware. Lembrando que a VMware nessa época estava em crescente acensão. Mas assim como a VMware esse grupos também começaram a ganhar tamanho e então viu se a necessidade de criar uma organização para os usuários de maneira independente. Atualmente o VMUG conta com mais de 150.000 membros ao redor do mundo. Além disso há diversos capítulos ativos no Brasil, sendo alguns deles:
		
	VMUG Rio Grande do Sul
	VMUG São Paulo
	VMUG Paraná
	VMUG Minas Gerais
	VMUG Brasilia	 
		
	Com o crescimento da comunidade VMUG como um todo é possível avaliar alguns pontos interessantes que acabaram se desenvolvendo e se destacando com o passar dos anos:
			
	Usabilidade do usuário VMware mais direta
	É visto que muitas vezes quando um novo usuário tentar entrar em um novo grupo técnico de TI ou adere a uma nova tecnologia, alguns por menores acabam dificultando a sua usabilidade. Material apenas em Inglês e dificuldade para achar nichos iguais ao seu e que utilizam a mesma tecnologia (produtos VMware no nosso caso) eu julgo serem uma pedra dentro do sapato. E é justamente esses empecilhos que o VMUG tenta diminuir, visto que ele apresenta uma interface mais eficaz e mais amigável para os usuários, as vezes até mesmo melhor que a própria VMware.
			
	Homogeneidade junto a VMware
	Como estamos falando de centenas de VMUGs, é possível notar que todo os envolvidos no grupo criam uma massa homogênea única e particular, mas que acima de tudo visam a melhoria constante dos produtos VMware. Sendo assim podemos ver que o VMUG num geral tem uma única voz, atuando quase como um coral, que é ouvida pela VMware e que muitas vezes tem impacto junto aos novos produtos dela.
			
	Experiência Única
	Todos os envolvidos sejam clientes da VMware, usuários ou líderes do VMUG que vão até um encontro ou que se envolvem ao grupo VMUG acabam tendo um alta qualidade na experiência e na usabilidade de produtos VMware.",
	user_id: 2
	},
	{
		title: "A Importância de Estudar os Conceitos",
		description: "	Ultimamente dentre as comunidades que participo tenho visto algumas dúvidas frequentes e ainda por cima com certas relações em comum. Tenho notado que essas dúvidas vem principalmente aos que estão começando na área de infraestrutura de TI e elas normalmente são as seguintes:

	Como faço para começar a trabalhar com servidores?
	Por onde devo começo a estudar se eu quiser abranger a área de infraestrutura de TI como um todo?
	Trabalho na área de suporte e quero começar a trabalhar com rede e servidores, o que eu devo fazer?
	Realmente esse tipo de questionamento são bem comuns quando estamos no começo da nossa carreira e iniciando a nossa jornada dentro do mercado de TI. De forma alguma devemos no sentir envergonhados por fazer esse tipo de questionamento para os profissionais que já trabalham a alguns anos na área, muito pelo contrário. Isso apenas mostra que você esta buscando por aprendizados e não esta conformado com a sua situação ou cargo atual.
		
	Costumo dizer que área de TI, diferente da grande maioria das áreas, passa por uma constante evolução. Isso vem ocorrendo basicamente desde do estouro da Internet que ocorreu na década de 90. Já houveram diversas grandes bolhas dentro do mercado de TI e nenhum deles dominou o mercado a ponto de vingar ad eternum até os dias de hoje. Isso mostra e comprova o quanto a área é mutável e evoluível com o passar dos tempos.
		
	Toda via, não podemos desconsiderar que temos algum núcleos muito bem solidificados dentre o mercado e que são muito bem conceituados e fundamentados. Costumo chamar essas áreas de conceitos de TI, que mesmo com toda a revolução que já tivemos na área eles ainda permaçem sólidos e claros nos dias de hoje. E são justamente esses conceitos que são praticamente obrigatórios para uma boa solidificação dentro o mercado de trabalho de TI como um todo, que são eles:
		
	Rede de Computadores
	As redes de computadores são a base de tudo. Desde a micro empresa até as grandes corporações sempre vão precisar de uma rede que ligue todos os computadores não só a Internet, mas também entre si, formando assim uma LAN.
		
	Entender os principais conceitos de redes,  como por exemplo no que consiste as topologias e como os principais protocolos funcionam, são itens obrigatórios não só para os profissionais de infraestrutura. Até mesmo programadores necessitam ter o entendimento desse tópicos pra conseguir avançar na carreira. Não entender como as redes de computadores funcionam pode se tornar um deficit lá na frente para você que acha que isso não é importante.
		
	Para iniciar os estudos eu gosto muito de recomendar o livre Redes de Computadores do Gabriel Torres.
		
	Link: https://www.amazon.com.br/Redes-Computadores-Gabriel-Torres/dp/8561893680/
		
		
	Sistemas Operacionais
	Outo tópico muito importante que devemos dar atenção no momento em que estamos trilhando a nossa carreira são os sistemas operacionais. Não falo aqui em você ter que escolher um sistema especifico e usar ele por todo o sempre, pelo contrário, vocês deve conhecer todos os sistemas operacionais para justamente saber as semelhanças, diferenças e particularidades de cada um. É impossível provisionar e manter um sistema estável, seguro e confiável sem você conhecer ele de maneira profunda. Entender não só como funciona os sistemas de arquivos de cada um dos sistemas, mas também as variáveis de ambientes são itens importante.
		
	Para começar a jornada eu recomendo o livro do famoso Americano Andrew Tanenbaum com o nome de Sistemas Operacionais Modernos.
		
		
		
	Link: https://www.amazon.com.br/Sistemas-operacionais-modernos-Andrew-Tanenbaum/dp/8543005671
		
		 
		
	Virtualização
	Atualmente é impossível falarmos de tecnologia da informação sem falarmos de virtualização. É imensurável o ganho que temos no momento em que começamos a utilizar virtualização em nossos ambientes de data center e TI num geral. Não conhecer essa tecnologia nos dias de hoje é assinar um atestado de óbito a sua carreira. Caso você não conheça os principais players de virtualização bem como os seus hypervisors certamente você ficara para trás.
	
	O livro que eu sempre recomendo para estudar o assunto é do Manoel Veras Sousa, pois além de trazer toda a base conceitual da virtualização ele também aborda assuntos sobre o hypervisor do melhor principal fabricante de virtualização que temos hoje em dia no mercado de TI.
		
	Virtualização (2ª edição): Tecnologia Central do Datacenter por [de Neto, Manoel Veras Sousa]]
	
	Link: https://www.amazon.com.br/Virtualiza%C3%A7%C3%A3o-2%C2%AA-edi%C3%A7%C3%A3o-Tecnologia-Datacenter-ebook/dp/B01AKCAVPG/
		
		 
	E você? Tem algum outro conceito importante que você acha interessante para estudarmos? Deixa aqui nos comentários se você tem algum livro que você considera obrigatório na estante para ter uma base de estudo sólida. Eu quero te ouvir!",
	user_id: 1
	},
])

Comment.create ([
	{text: "Parabéns pelo post, a quantos anos você trabalha com TI?", post_id: 1,user_id: 2},
	{text: "Realmente, um assunto muito atual!", post_id: 2,user_id: 1},
	{text: "Poderia ter dado mais exemplos...", post_id: 3,user_id: 2},
	{text: "Anotado... obrigado pelo comentário", post_id: 3, comment_id: 3,user_id: 1},
	{text: "Sim, já é realidade!", post_id: 2, comment_id: 2,user_id: 2},
	{text: "Obrigado pelo feedback, trabalho a 5 anos com TI!", post_id: 1, comment_id: 1,user_id: 1}
])

Tag.create([
	{ name: "Servidores"},
	{name: "Redes"},
	{name: "Estudo"}
])

(1..3).each do |i|
	p = Post.find i
	p.tags << Tag.find(i)
end