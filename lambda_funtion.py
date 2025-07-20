def lambda_handler(event, context):
    print("I am lambda")
    return {
        'statusCode': 200,
        'body': 'I am lambda'
    }
