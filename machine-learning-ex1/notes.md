The biggest lesson here was just to watch my parentheses and order of operations


Octave commands

	* Basic
	* 
		* size
		* clear
		* 
			* clear workspace variables

		* who
		* whos
		* 
			* detailed who

		* load filename or load('filename')
		* save hello.mat v;
		* 
			* save v into file hello.mat

		* save hello.txt v -ascii
		* 
			* save as text

		* A(3,2)
		* 
			* element in third row, second column

		* A(2,:)
		* 
			* everything in row two

		* A([1,3], :)
		* 
			* all elements of first and third row


	* Computation
	* 
		* A*C
		* A.*B
		* 
			* element-wise multiplication

		* A .^ 2
		* 
			* element-wise square of A

		* 1 ./ v
		* 
			* element-wise reciprocal of v

		* log(v)
		* exp(v)
		* 
			* e to each element

		* abs(v)
		* -v
		* 
			* negative each element

		* v + ones(length(v), 1)
		* 
			* increment every element by 1
			* v + 1 does the same

		* A'
		* 
			* A transpose

		* (A')'
		* max(a)
		* [val, ind] = max(a)
		* a < 3
		* 
			* element-wise comparison

		* find(a < 3)
		* 
			* indices of elements where comparison is true

		* magic
		* 
			* magic square
			* convenient to generate matrix

		* [r, c] = find(A >= 7)
		* sum(a)
		* prod(a)
		* floor(a)
		* ceil(a)
		* rand(3)
		* 
			* 3x3 matrix

		* max(rand(3), rand(3))
		* 
			* elementwise max

		* max(A,[],1)
		* 
			* columnwise max along first dimension

		* max(A,[],2)
		* 
			* max per row

		* max(A(:))
		* sum(A,1)
		* 
			* per column sum

		* sum(A,2)
		* 
			* per row sum

		* sum(sum(A .* eye(9)));
		* flipup()
		* 
			* flip vertically

		* pinv(A)
		* 
			* pseudo-inverse of matrix A




Normal equation

	* n = 10,000 is pushing the limit of efficiency by modern computing standards for this algorithm
	* efficiency is O(n^3)
	* theta = pinv(X' * X) * X' * y

Logistic regression

	* Cost function is created using the principle of maximum likelihood estimation

